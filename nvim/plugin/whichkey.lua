--local M = {}

--function M.setup()
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
--  ["w"] = { "<cmd>update!<CR>", "Save" },
--  ["q"] = { "<cmd>q!<CR>", "Quit" },
  ["<space>"] = { "<cmd>nohlsearch<CR>", "No Highlight" },

  b = {
    name = "Buffer",
    c = { "<Cmd>bd!<Cr>", "Close current buffer" },
    D = { "<Cmd>%bd|e#|bd#<Cr>", "Delete all buffers" },
  },

  f = {
    name = "Find",
    f = { "<cmd>lua require('utils.finder').find_files()<cr>", "Files" },
    b = { "<cmd>FzfLua buffers<cr>", "Buffers" },
    o = { "<cmd>FzfLua oldfiles<cr>", "Old files" },
    g = { "<cmd>FzfLua live_grep<cr>", "Live grep" },
    c = { "<cmd>FzfLua commands<cr>", "Commands" },
    e = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
  },

  z = {
    name = "Packer",
    c = { "<cmd>PackerCompile<cr>", "Compile" },
    i = { "<cmd>PackerInstall<cr>", "Install" },
    s = { "<cmd>PackerSync<cr>", "Sync" },
    S = { "<cmd>PackerStatus<cr>", "Status" },
    u = { "<cmd>PackerUpdate<cr>", "Update" },
  },

  g = {
    name = "Git",
    s = { "<cmd>Neogit<CR>", "Status" },
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
-- end

--return M
