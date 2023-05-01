-- Register the command in your plugin file
vim.api.nvim_create_user_command("Obsidian", function()
  require"obs".open_in_obsidian()
end, { nargs = 0 })
-- vim.api.nvim_create_user_command("SummarizeArticle", SummarizeArticle, { nargs = 1})

