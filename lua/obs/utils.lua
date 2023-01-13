local M = {}

M.get_git_relative_path = function()
  -- Get the full path of the current file
  local file_path = vim.api.nvim_call_function("expand", {"%:p"})

  -- Get the path of the root git repository
  local git_root_path = vim.api.nvim_call_function("system", {"git rev-parse --show-toplevel"}):gsub("\n", "")
  local relative_path = string.sub(file_path,string.len(git_root_path)+2)
  return relative_path
end

return M


