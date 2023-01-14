local M = {}

M.test_get_git_root_folder = function()
  -- Get the path of the root git repository
  local git_root_folder = require"obs.utils".get_git_root_folder()
  local result = git_root_folder == "open-in-obsidian.nvim"
  return result

end

M.test_get_git_relative_path = function()
  -- Get the path of the root git repository
  local relative_path = require"obs.utils".get_git_relative_path()
  local result = relative_path == "lua/tests/test_utils.lua"
  return result

end

vim.pretty_print(M.test_get_git_root_folder()) -- should print true
vim.pretty_print(M.test_get_git_relative_path()) -- should print true
return M
