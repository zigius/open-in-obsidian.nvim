local M = {}

M.open_in_obsidian = function()

  local relative_path = require"obs.utils".get_git_relative_path()
  local vault = require"obs.utils".get_git_root_folder()
  -- !open "obsidian://open?vault=notes&file=second_brain/resources/the_happy_sleeper"
  -- temp path
  -- relative_path = "second_brain/resources/the_happy_sleeper.md"

  local cmd = "!open \"obsidian://open?vault=" .. vault .. "&file=" .. relative_path .. "\""
  vim.api.nvim_command(cmd)
end

-- M.setup({ vault = "notes" })
-- M.open_in_obsidian()

return M


