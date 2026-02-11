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

function M.set_check_input(repl)
	-- Saves the current position
  local current_row, current_col = unpack(vim.api.nvim_win_get_cursor(0))

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

function M.set_check_input_doing()
	-- Saves the current position
  local current_row, current_col = unpack(vim.api.nvim_win_get_cursor(0))

  local repl = "x"

  -- Search backward for literal: " "
  vim.fn.search([["\~"]], "bW")

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


function M.make_check()
	local bufnr = 0
	local row, col = unpack(vim.api.nvim_win_get_cursor(0))

	local snippet = {
		'#check(flag: " ", level: 1)[',
		'  ',
		']',
	}
	vim.api.nvim_buf_set_lines(bufnr, row - 1, row -1, false, snippet)

	vim.api.nvim_win_set_cursor(0, { row + 1, 0})

end


function M.go_to_next_check()
  -- Search backward for literal: " "
  vim.fn.search([["."]], "W")

  local current_row, current_col = unpack(vim.api.nvim_win_get_cursor(0))
  vim.api.nvim_win_set_cursor(0, {current_row + 1, 2})
end

function M.go_to_prev_check()
  -- Search backward for literal: " "
  vim.fn.search([["."]], "bW")
  vim.fn.search([["."]], "bW")

  local current_row, current_col = unpack(vim.api.nvim_win_get_cursor(0))
  vim.api.nvim_win_set_cursor(0, {current_row + 1, 2})
end


function M.go_to_next_check_empty()
  -- Search backward for literal: " "
  vim.fn.search([[" "]], "W")

  local current_row, current_col = unpack(vim.api.nvim_win_get_cursor(0))
  vim.api.nvim_win_set_cursor(0, {current_row + 1, 2})
end

function M.go_to_prev_check()
  -- Search backward for literal: " "
  vim.fn.search([["."]], "bW")
  vim.fn.search([["."]], "bW")

  local current_row, current_col = unpack(vim.api.nvim_win_get_cursor(0))
  vim.api.nvim_win_set_cursor(0, {current_row + 1, 2})
end


return M
