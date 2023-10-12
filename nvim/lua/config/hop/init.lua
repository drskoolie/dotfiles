require'hop'.setup { }

vim.api.nvim_set_keymap('n', 's', 
[[<cmd>lua require'hop'.hint_char1({ current_line_only = false, })<CR>]],
{})

vim.api.nvim_set_keymap('v', 's', 
[[<cmd>lua require'hop'.hint_char1({ current_line_only = false, })<CR>]],
{})

vim.api.nvim_set_keymap('n', 'S', 
[[<cmd>lua require'hop'.hint_words({ current_line_only = false, })<CR>]],
{})

vim.api.nvim_set_keymap('v', 'S', 
[[<cmd>lua require'hop'.hint_words({ current_line_only = false, })<CR>]],
{})
