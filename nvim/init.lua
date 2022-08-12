require 'user.plugins'
require 'user.options'
require 'user.keybindings'
require 'user.lsp'
require('impatient')

-- Themes
vim.cmd[[colorscheme everforest]]
-- vim.cmd[[colorscheme tokyonight]]

-- vim.api.nvim_set_option("clipboard","unnamed")

-- tokionight config --
vim.g.tokyonight_style = "night"-- storm | night | day
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_italic_comments = true
vim.g.tokyonight_terminal_colors = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" } -- Change the "hint" color to the "orange" color, and make the "error" color bright red

