vim.cmd([[ 

autocmd BufRead,BufNewFile *.md set filetype=markdown

augroup markdown
  autocmd!
  autocmd FileType markdown setlocal textwidth=150
  autocmd FileType markdown setlocal formatoptions=tc
  autocmd FileType markdown setlocal spell
augroup END
]])
