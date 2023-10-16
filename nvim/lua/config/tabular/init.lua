vim.cmd([[

function! AlignAndFix()
    " Save current cursor position
    let l:pos = getpos(".")

    " Step 1: Run Tabularize
    %Tabularize /|/

    " Step 2: Determine the number of '|' in the document
    let l:header = getline(1)
    let l:num_pipes = len(split(l:header, '|')) - 1

    " Step 3: Loop through all lines
    let l:idx = 1
    while l:idx <= line("$") " Loop until the last line
        let l:current_line = getline(l:idx)
        if l:current_line == '-' || l:current_line =~ '^-\+[-+]*$' " Detect single '-' or existing separators

            " Construct the separator based on the number of '|'
            let l:separator = repeat(' |', l:num_pipes) . ' |'
            call setline(l:idx, l:separator)

            " Tabularize this line
            execute l:idx . 'Tabularize /|/'

            " Replace spaces with '-' and '|' with '+'
            let l:separator = substitute(getline(l:idx), ' ', '-', 'g')
            let l:separator = substitute(l:separator, '|', '+', 'g')
            call setline(l:idx, l:separator)
        endif
        let l:idx += 1
    endwhile

    " Restore cursor position
    call setpos(".", l:pos)
endfunction
	autocmd BufWritePre *.gantt call AlignAndFix()
]])
