local ok, fidget = pcall(require, 'fidget')
if not ok then
  return
end

return fidget.setup({
text = {
    spinner = "dots",         -- animation shown when tasks are ongoing
    done = "✔",               -- character shown when all tasks are complete
    commenced = "Started",    -- message shown when task starts
    completed = "Completed",  -- message shown when task completes
  },
})
