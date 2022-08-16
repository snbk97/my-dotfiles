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

local mappings = {
  ["<space>"] = { "<cmd>nohlsearch<CR>", "No Highlight" },

  b = {
    name = "Buffer",
    c = { "<Cmd>bd!<CR>", "Close current buffer" },
    D = { "<Cmd>%bd|e#|bd#<CR>", "Delete all buffers" },
  },

  f = {
    name = "Find",
    -- t = { "<cmd>lua require('utils.finder').find_files()<CR>", "Files" },
    b = { "<cmd>Telescope buffers<CR>", "Buffers" },
    o = { "<cmd>Telescope oldfiles<CR>", "Old files" },
    s = { "<cmd>Telescope live_grep<CR>", "Old files" },
    f = { "<cmd>Telescope find_files<CR>", "Find Files" },
    -- g = { "<cmd>FzfLua live_grep<CR>", "Live grep" },
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
