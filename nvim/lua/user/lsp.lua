require("nvim-lsp-installer").setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    },
})

local config = require'lspconfig'

config.gopls.setup{}

config.sumneko_lua.setup{
	settings = {
		Lua = {
		runtime = {
			-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
			version = 'LuaJIT',
		},
		diagnostics = {
			-- Get the language server to recognize the `vim` global
			globals = {'vim'},
		},
		workspace = {
			-- Make the server aware of Neovim runtime files
			library = vim.api.nvim_get_runtime_file("", true),
		},
		-- Do not send telemetry data containing a randomized but unique identifier
		telemetry = {
			enable = false,
		},
		},
	},
}



-- TODO: https://alpha2phi.medium.com/neovim-for-beginners-lsp-part-1-b3a17ddbe611

-- nkeymap('gd', ':lua vim.lsp.buf.definition()<cr>')
-- nkeymap('gD', ':lua vim.lsp.buf.declaration()<cr>')
-- nkeymap('gi', ':lua vim.lsp.buf.implementation()<cr>')
-- nkeymap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
-- nkeymap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
-- nkeymap('gr', ':lua vim.lsp.buf.references()<cr>')
-- nkeymap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
-- nkeymap('K', ':lua vim.lsp.buf.hover()<cr>')
-- nkeymap('<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
-- nkeymap('<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
-- nkeymap('<leader>rn', ':lua vim.lsp.buf.rename()<cr>')
