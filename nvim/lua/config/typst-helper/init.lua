-- :lua require("config/typst-helper").print2()

local M = {}

function M.print2()
	print(_VERSION)
end


function M.set_check()
	-- Saves the current position
  local current_row, current_col = unpack(vim.api.nvim_win_get_cursor(0))

  -- Ask user what to replace with
  local repl = vim.fn.input("Replace with: ")
  if repl == "" then
    vim.cmd("normal! `a")
    return
  end

  -- Search backward for literal: " "
  vim.fn.search([["."]], "bW")

  local bufnr = 0
  local row = vim.api.nvim_win_get_cursor(0)[1] - 1
  
  -- Get the current line
  local line = vim.api.nvim_buf_get_lines(bufnr, row, row + 1, false)[1]
  
  -- Replace pattern "." (any character) with my_variable
  line = line:gsub([["."]], [["]] .. repl .. [["]], 1)
  
  -- Set the updated line
  vim.api.nvim_buf_set_lines(bufnr, row, row + 1, false, {line})

  -- Goes to the perveous position
  vim.api.nvim_win_set_cursor(0, {current_row, current_col})
end

return M
