require'hop'.setup {
	keys = 'asdfghjel;qwkrtyuiopzxcvbnm,./1234567890'
}

vim.api.nvim_set_keymap('', 'f', 
[[<cmd>lua require'hop'.hint_char1({ current_line_only = false, })<CR>]],
{})

vim.api.nvim_set_keymap('', 'F',
[[:HopPattern<CR>]],
{})

vim.api.nvim_set_keymap('', 't', 
[[<cmd>lua require'hop'.hint_char1({ hint_offset = -1 })<cr>]],
{})

vim.api.nvim_set_keymap('', 'T', 
[[<cmd>lua require'hop'.hint_char1({ hint_offset = 1 })<cr>]],
{})

vim.api.nvim_set_keymap('', 's',
[[<cmd>lua require'hop'.hint_lines()<CR>]],
{})
