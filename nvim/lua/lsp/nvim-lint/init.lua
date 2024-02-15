require('lint').linters_by_ft = {
  python = {'ruff'},
}

vim.api.nvim_create_autocmd({"BufReadPost", "BufWritePost"}, {
  pattern = {"*.py"},
  callback = function()
    require('lint').try_lint()
  end,
})
