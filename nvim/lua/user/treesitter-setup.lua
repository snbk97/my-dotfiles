local configs = require'nvim-treesitter.configs'

configs.setup {
	ensure_installed = {"c", "lua", "rust", "cpp"},
	sync_install = false,
    ensure_installed = "maintained",
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    },
}
