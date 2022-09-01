require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    --theme = 'horizon',
    -- theme = 'codedark',
    -- theme = 'onedark',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    globalstatus = true,
  },
  sections = {
    lualine_c = { {
      'filename',
      path = 1 -- 0: Just the filename, 1: Relative, 2, 3: Absolute path
    } },
  }
}
