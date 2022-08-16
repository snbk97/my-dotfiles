-- quick run
local ok, jaq = pcall(require, 'jaq-nvim')
if not ok then
 return
end
return jaq.setup({
  cmds = {
    -- Uses vim commands
    internal = {
      lua = "luafile %",
      vim = "source %"
    },

    -- Uses shell commands
    external = {
      markdown = "glow %",
      python   = "python3 %",
      go       = "go run %",
      sh       = "sh %"
    }
  },

  behavior = {
    -- Default type
    default     = "float",
  },

  ui = {
    float = {
      -- See ':h nvim_open_win'
      border    = "rounded",

      -- See ':h winhl'
      winhl     = "Normal",
      borderhl  = "FloatBorder",

      -- See ':h winblend'
      winblend  = 0,

      -- Num from `0-1` for measurements
      height    = 0.8,
      width     = 0.8,
      x         = 0.5,
      y         = 0.5
    },

  }
})
