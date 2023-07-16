vim.cmd([[
let g:vimtex_view_method = 'zathura'
let g:vimtex_mappings_enabled = 0

" TOC settings
let g:vimtex_toc_config = {
      \ 'name' : 'TOC',
      \ 'layers' : ['todo', 'include'],
      \ 'split_width' : 50,
      \ 'todo_sorted' : 0,
      \ 'show_help' : 1,
      \ 'show_numbers' : 1,
      \ 'mode' : 1,
      \}
]])
