function! IPythonOpen()
	FloatermNew --wintype=vsplit --position=right --width=0.5
	normal h
	normal 
	FloatermSend (cd %:p:h ; ipython --no-autoindent; clear)
	call feedkeys("\<Esc>")
endfunction


function! FloatermOpen()
	FloatermNew --wintype=vsplit --position=right --width=0.5
	normal h
	normal 
	FloatermSend (cd %:p:h ; clear)
	call feedkeys("\<Esc>")
endfunction

function! TerminalRight()
	FloatermNew --wintype=vsplit --position=right --width=0.5
	normal h
	normal 
	call feedkeys("\<Esc>")
endfunction


function! MatlabCopy() abort
	set nowrapscan
	let @/="^##"
	normal Nv
	try
		normal nk$
	catch
		normal G$
	endtry
	normal y
	let @/=""
	set wrapscan
endfunction

command! MatlabCopy call MatlabCopy()
