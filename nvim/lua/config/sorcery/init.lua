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
    clipboard_content = get_clipboard_content()
    -- Remove trailing newline and escape quotes
    clipboard_content = clipboard_content:gsub('%s+$', ''):gsub('"', '\\"')
    -- Split clipboard content into lines
    lines = {}
    for line in clipboard_content:gmatch("[^\r\n]+") do
        table.insert(lines, line)
    end

    -- Send each line to zellij without pressing enter
    for i, line in ipairs(lines) do
        press_enter = (i == #lines)  -- Only press enter after the last line
        zellij_send_chars(line, press_enter)
    end

	if #lines > 1 then
		zellij_send_ascii(13)
	end
end
