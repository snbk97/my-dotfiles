local rosepine = require('rose-pine')

vim.cmd('colorscheme rose-pine')

return rosepine.setup({
  dark_variant = 'moon',
  dim_nc_background = false,
  disable_background = false,
  disable_float_background = false,
  disable_italics = false,
  --[[ highlight_groups = {
    ColorColumn = { bg = 'rose' }
  } ]]
})
