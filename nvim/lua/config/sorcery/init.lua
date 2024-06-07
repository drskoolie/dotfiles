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
	move_right = [[:silent !zellij action move-focus right; ]]
	move_left = [[zellij action move-focus left]]

	command = move_right .. action .. move_left
	vim.cmd(command)
end

function zellij_send_ascii(input)
	write_ascii = [[zellij action write ]] .. input .. [[ ; ]]

	zellij_send_action(write_ascii)
end

function zellij_send_chars(input)
	write_chars = [[zellij action write-chars "]] .. input .. [["; ]]
	press_enter = [[zellij action write 13; ]]

	zellij_send_action(write_chars .. press_enter)
end

function zellij_paste()
    local clipboard_content = get_clipboard_content()

    -- Split clipboard content into lines
    local lines = {}
    for line in clipboard_content:gmatch("[^\r\n]+") do
        table.insert(lines, line)
    end

    -- Send each line to zellij
    for _, line in ipairs(lines) do
        zellij_send_chars(line)
    end
end

zellij_paste()
