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

vim.cmd([[com! TmuxPaste lua tmux_paste()]])

function tmux_open_pane(options)
	return [[:silent !tmux splitw ]] .. options .. [[<CR>]]
end

function tmux_send_reg(reg)
	reg_store = vim.fn.getreg(reg)
	tmux_sendv(reg_store)
end

-- vim.cmd([[com! -nargs=+ TmuxSend lua tmux_send(<q-args>)]])

local tmux_kill_pane_last = ':silent !tmux last-pane \\; kill-pane<CR>'


