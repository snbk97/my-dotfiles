require('bufferline').setup {
  options = {
    mode = "buffer",
    numbers =  "none", -- | "none" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
    close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
    -- right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
    -- left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
    middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
    max_name_length = 18,
    tab_size = 18,
    separator_style = "padded_slant", -- | "thick" | "thin" | { 'any', 'any' },
    -- separator_style = "thick", -- | "thick" | "thin" | { 'any', 'any' },
    diagnostics_update_in_insert = false,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    name_formatter = function(buf)  -- buf contains a "name", "path" and "bufnr"
      -- remove extension from markdown files for example
      if buf.name:match('%.md') then
        return vim.fn.fnamemodify(buf.name, ':t:r')
      end
    end,

    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end
  }
}

-- TODO: checkout buffline groups
