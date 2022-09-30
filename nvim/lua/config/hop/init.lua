require'hop'.setup { }

vim.api.nvim_set_keymap('n', 't', 
[[<cmd>lua require'hop'.hint_char1({ current_line_only = false, })<CR>]],
{})

vim.api.nvim_set_keymap('v', 't', 
[[<cmd>lua require'hop'.hint_char1({ current_line_only = false, })<CR>]],
{})

vim.api.nvim_set_keymap('n', 'T', 
[[<cmd>lua require'hop'.hint_words({ current_line_only = false, })<CR>]],
{})

vim.api.nvim_set_keymap('v', 'T', 
[[<cmd>lua require'hop'.hint_words({ current_line_only = false, })<CR>]],
{})

vim.api.nvim_set_keymap('n', 's', 
[[<cmd>lua require'hop'.hint_lines()<CR>]],
{})

vim.api.nvim_set_keymap('v', 's', 
[[<cmd>lua require'hop'.hint_lines()<CR>]],
{})
