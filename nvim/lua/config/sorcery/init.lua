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

function tmux_open_pane(options)
	return [[:silent !tmux splitw ]] .. options .. [[<CR>]]
end

function tmux_send_reg(reg)
	reg_store = vim.fn.getreg(reg)
	tmux_sendv(reg_store)
end

-- vim.cmd([[com! -nargs=1 TmuxSend lua tmux_sendv(<q-args>)]])

local tmux_kill_pane_last = ':silent !tmux last-pane \\; kill-pane<CR>'

