-- Register the command in your plugin file
vim.api.nvim_create_user_command("Obisidian", function()
  local cmd = require("obs").create_obsidian_command()
end, { nargs = 0 })
-- vim.api.nvim_create_user_command("SummarizeArticle", SummarizeArticle, { nargs = 1})

