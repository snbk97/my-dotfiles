local ok, telescope = pcall(require, "telescope")
if not ok then
  return
end

-- Notifcations
telescope.load_extension("notify")

local action = require("telescope.actions")

return telescope.setup ({
  defaults = {
    -- layout_strategy= "vertical",
    file_ignore_patterns = {"build", "public", "dist", ".storybook",".worktree", "vendor", "node_modules"},
    mappings = {
      i = {
        ["<esc>"] = action.close
      }
    }
  }
})

