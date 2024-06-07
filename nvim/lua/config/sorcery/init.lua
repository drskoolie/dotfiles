vim.cmd([[set clipboard=unnamedplus]])

function tmux_paste()
	output0 = [[silent !tmux select-pane -t 1]]
	output1 = [[silent !xclip -o -sel clipboard | tmux load-buffer -]]
	output2 = [[silent !tmux paste-buffer]]
	output3 = [[silent !tmux send -t 1 Enter]]
	output4 = [[silent !tmux select-pane -t 0]]
	vim.cmd(output0)
	vim.cmd(output1)
	vim.cmd(output2)
	vim.cmd(output3)
	vim.cmd(output4)
end

-- block_copy

function block_copy(pattern)
	local top = vim.fn.search('^' .. pattern, 'bW')

 	vim.cmd('normal! 0V')

	local bottom = vim.fn.search('^' .. pattern, 'nW')

	if ( bottom == 0)
	then 
		vim.cmd('normal! G')
	else
		vim.cmd('normal! ' .. bottom - 1 .. 'gg')
	end
end

vim.api.nvim_set_keymap('o', 'm', [[:<C-u>lua block_copy('##')<CR>]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'm', [[:<C-u>lua block_copy('##')<CR>]], { noremap = true, silent = true})

function set_trace()
	vim.cmd('normal! ^')
	local indent = vim.fn.indent(vim.fn.line('.'))

	vim.cmd('normal! o')
	indent_space = string.rep(' ', indent)
	indent_space = indent_space .. ' '
	vim.cmd('normal! i' .. indent_space)

	vim.cmd('normal! iimport ipdb; ipdb.set_trace(context = 10)')
	vim.cmd('normal! ^')
end

function set_trace_up()
	vim.cmd('normal! ^')
	local indent = vim.fn.indent(vim.fn.line('.'))

	vim.cmd('normal! O')
	indent_space = string.rep(' ', indent)
	indent_space = indent_space .. ' '
	vim.cmd('normal! i' .. indent_space)

	vim.cmd('normal! iimport ipdb; ipdb.set_trace(context = 10)')
	vim.cmd('normal! ^')
end

function get_clipboard_content()
    local clipboard_content = vim.fn.system('xclip -o -sel clipboard')
    return clipboard_content
end

function zellij_send_action(action)
	local move_right = [[:silent !zellij action move-focus right; ]]
	local move_left = [[zellij action move-focus left]]

	local command = move_right .. action .. move_left
	vim.cmd(command)
end

function zellij_send_ascii(input)
	local write_ascii = [[zellij action write ]] .. input .. [[ ; ]]

	zellij_send_action(write_ascii)
end

function zellij_send_chars(input, enter_flag)
	enter_flag = enter_flag or true
	local write_chars = [[zellij action write-chars "]] .. input .. [["; ]]
	local command = write_chars

	if enter_flag then
		command = command .. [[zellij action write 13; ]]
	end

	zellij_send_action(command)
end

function zellij_paste()
    local clipboard_content = get_clipboard_content()

    -- Remove trailing newline and escape quotes
    clipboard_content = clipboard_content:gsub('%s+$', ''):gsub('"', '\\"')

	-- Replace newlines with a special sequence to avoid sending enter
    -- clipboard_content = clipboard_content:gsub('\n', '\\n')

    -- Send the entire clipboard content to zellij
    zellij_send_chars(clipboard_content)
end

print("1")
