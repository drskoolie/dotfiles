-- Set up
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- General Mappings
keymap('n', 'ZZ', '<NOP>', opts)

-- Windows -- 
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

keymap('i', '<C-h>', '<Esc><C-w>h', opts)
keymap('i', '<C-j>', '<Esc><C-w>j', opts)
keymap('i', '<C-k>', '<Esc><C-w>k', opts)
keymap('i', '<C-l>', '<Esc><C-w>l', opts)

keymap('n', '<Enter>', 'o<Esc>', opts)

-- Resize
-- keymap('n', "<S-k>", ":resize +2<CR>", opts)
-- keymap('n', "<S-j>", ":resize -2<CR>", opts)
-- keymap('n', "<S-l>", ":vertical resize +2<CR>", opts)
-- keymap('n', "<S-h>", ":vertical resize -2<CR>", opts)

-- Visual --
-- Move Text
keymap("v", "<a-j>", ":m .+2<CR>gv", opts)
keymap("v", "<a-k>", ":m .-2<CR>gv", opts)

-- Pasting better
keymap("v", "p", '"_dP', opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Terminal
keymap('t', '<C-y>', '<C-\\><C-n>', term_opts)

keymap('t', '<C-h>', '<C-\\><C-n><C-w>h', term_opts)
keymap('t', '<C-j>', '<C-\\><C-n><C-w>j', term_opts)
keymap('t', '<C-k>', '<C-\\><C-n><C-w>k', term_opts)
keymap('t', '<C-l>', '<C-\\><C-n><C-w>l', term_opts)
