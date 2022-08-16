local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not ok then
  return
end

return treesitter.setup {
  ensure_installed = { "c", "lua", "rust" },
  sync_install = false,
  auto_install = true,
  ignore_install = { "javascript" },
  context_commentstring = {
    enable = true,
    enable_autocmd = false, 
  },
  highlight = {
    enable = true,
    disable = { "c", "rust" },
    additional_vim_regex_highlighting = false,
  }
}

