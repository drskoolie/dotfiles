function tmux_send(input, style)
	style = style or 'string'
	
	output = [[:silent !tmux send -t 1 ']] .. input .. [[' Enter<CR>]]

	if (style == 'string')
	then
		return output
	elseif (style == 'vim_cmd')
	then
		vim.cmd(string.sub(output, 2, -5))
	end
end

function tmux_send_clear()
	vim.cmd([[silent !tmux send -t 1 C-l]])
end

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

function tmux_open_pane(options)
	return [[:silent !tmux splitw ]] .. options .. [[<CR>]]
end

vim.cmd([[set clipboard=unnamedplus]])
vim.cmd([[com! TmuxPaste lua tmux_paste()]])
vim.cmd([[com! TmuxSendClear lua tmux_send_clear()]])

-- vim.cmd([[com! -nargs=+ TmuxSend lua tmux_send(<q-args>)]])

function tmux_pytest_open()
	vim.cmd([[silent !tmux new-window -n pytest]])
end

function tmux_pytest_run()
	output0 = [[silent !tmux send -t pytest.0 'clear' Enter]]
	output1 = [[silent !tmux send -t pytest.0 'python3 -m pytest' Enter]]
	output2 = [[silent !tmux select-window -t pytest]]
	vim.cmd(output0)
	vim.cmd(output1)
	vim.cmd(output2)
end

vim.cmd([[com! TmuxPytestOpen lua tmux_pytest_open()]])
vim.cmd([[com! TmuxPytestRun lua tmux_pytest_run()]])

local tmux_kill_pane_last = ':silent !tmux last-pane \\; kill-pane<CR>'

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

function tmux_latex_clear()
	vim.cmd([[silent !tmux sent -t latex.0 'latexmk -c' Enter]])
end

function tmux_latex_run()
	vim.cmd([[silent !tmux new-window -n latex]])
	vim.cmd([[silent !tmux select-window -n -p]])
	vim.cmd[[silent !tmux send -t latex.0 'latexmk -pvc' Enter]]
end

vim.cmd([[com! TmuxLatexClear lua tmux_latex_clear()]])
vim.cmd([[com! TmuxLatexRun lua tmux_latex_run()]])
