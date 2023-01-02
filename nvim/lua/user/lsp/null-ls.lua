local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local codeActions = null_ls.builtins.code_actions

return null_ls.setup {
  debug = false,
  sources = {
    -- formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
    -- formatting.black.with({ extra_args = { "--fast" } }),
    --[[ diagnostics.eslint.with({
      filetypes = {
        "javascriptreact",
        "typescript",
        "typescriptreact",
      },
    }), ]]
    codeActions.eslint,
    formatting.eslint,
    formatting.prettier,
    formatting.stylua,
    --formatting.prettier,
    -- null_ls.builtins.completion.spell,
    -- diagnostics.flake8
  },
  --[[ on_attach = function(client)
		vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()")
		client.resolved_capabilities.document_formatting = true
	end, ]]
}
