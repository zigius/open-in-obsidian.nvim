local M = {}

M.setup = function(opts)
  -- code
  -- vim.pretty_print(opts)
  vim.api.nvim_set_var("obsidian_plugin_opts", opts)
end

M.create_obsidian_command = function()

  local relative_path = require("obs.utils").get_git_relative_path()
  local opts = vim.api.nvim_get_var("obsidian_plugin_opts")

  -- !open "obsidian://open?vault=notes&file=second_brain/resources/the_happy_sleeper"
  -- temp path
  relative_path = "second_brain/resources/the_happy_sleeper.md"

  local cmd = "!open \"obsidian://open?vault=" .. opts.vault .. "&file=" .. relative_path .. "\""
  vim.api.nvim_command(cmd)
end

M.setup({ vault = "notes" })
M.create_obsidian_command()

return M
