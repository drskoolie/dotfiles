-- General Mappings
--vim.api.nvim_set_keymap('n', '<C-z>', '<NOP>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'ZZ', '<NOP>', { noremap = true, silent = true })

-- Terminal
vim.api.nvim_set_keymap('t', '<C-y>', '<C-\\><C-n>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('t', '<C-h>', '<C-\\><C-n><C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-j>', '<C-\\><C-n><C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-k>', '<C-\\><C-n><C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-l>', '<C-\\><C-n><C-w>l', { noremap = true, silent = true })

-- Windows
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<C-h>', '<Esc><C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-j>', '<Esc><C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<Esc><C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-l>', '<Esc><C-w>l', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Enter>', 'o<Esc>', { silent = true })
