vim.cmd([[ 
 augroup highlight_yank
     autocmd!
     au TextYankPost * silent! lua vim.highlight.on_yank{timeout=250}
 augroup END
]])
