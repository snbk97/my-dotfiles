-- disbled

--[[
local ok, lsp_sig = pcall(require, "lsp_signaure")
if not ok then
  return
end

return lsp_sig.setup({
  bind = true, -- This is mandatory, otherwise border config won't get registered.
  handler_opts = {
    border = "rounded"
  }
})

]]
