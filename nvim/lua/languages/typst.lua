vim.cmd([[ 

autocmd BufRead,BufNewFile *.typ set filetype=typst

augroup typst
  autocmd!
  autocmd FileType markdown setlocal textwidth=120
  autocmd FileType markdown setlocal formatoptions=tc
  autocmd FileType markdown setlocal spell
augroup END
]])
