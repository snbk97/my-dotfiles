local ok, notify = pcall(require, "notify")
if not ok then
  return
end

vim.notify = notify

return notify.setup({
  background_colour = "Normal",
  fps = 30,
  icons = {
    DEBUG = "",
    ERROR = "",
    INFO = "",
    TRACE = "✎",
    WARN = ""
  },
  stages = "fade",
  timeout = 2000
})

