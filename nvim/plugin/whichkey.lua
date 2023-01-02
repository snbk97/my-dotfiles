local ok, whichkey = pcall(require,"which-key")
if not ok then
  return
end

local conf = {
  window = {
    border = "single", -- none, single, double, shadow
    position = "bottom", -- bottom, top
  },
}

local opts = {
  mode = "n", -- Normal mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
}

function search_current_buffer()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end

local mappings = {
  ["<space>"] = { "<cmd>nohlsearch<CR>", "No Highlight" },

  b = {
    name = "Buffer",
    c = { "<Cmd>bd!<CR>", "Close current buffer" },
    D = { "<Cmd>%bd|e#|bd#<CR>", "Delete all buffers" },
  },

  f = {
    name = "Find",
    c = { search_current_buffer, "Current buffer" },
    b = { "<cmd>Telescope buffers<CR>", "Buffers" },
    o = { "<cmd>Telescope oldfiles<CR>", "Recent files" },
    s = { "<cmd>Telescope live_grep<CR>", "Search in files" },
    f = { "<cmd>Telescope find_files<CR>", "Find Files" },
    -- c = { "<cmd>FzfLua commands<CR>", "Commands" },
    e = { "<cmd>NvimTreeToggle<CR>", "Explorer" },
  },

  z = {
    name = "Packer",
    c = { "<cmd>PackerCompile<CR>", "Compile" },
    i = { "<cmd>PackerInstall<CR>", "Install" },
    s = { "<cmd>PackerSync<CR>", "Sync" },
    S = { "<cmd>PackerStatus<CR>", "Status" },
    u = { "<cmd>PackerUpdate<CR>", "Update" },
  },

  g = {
    name = "Git",
  },
  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for key maps that start with a native binding
    -- most people should not need to change this
    i = { "j", "k" },
    v = { "j", "k" },
  },
}

whichkey.setup(conf)
whichkey.register(mappings, opts)
return whichkey
