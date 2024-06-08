vim.cmd([[ 
	" Numbers on the left
	set numberwidth=1
	set nu rnu

	autocmd FileType qf nnoremap <buffer> q :cclose<CR>

	" Mappings that are free to use
	" -, \, M, <bs>, <cr>, <c-c>, <c-[>
]])
