-- Set up
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- General Mappings
keymap('n', 'ZZ', '<NOP>', opts)
keymap('i', '<C-g>', '<C-x><C-f>', opts)

-- keymap('n', '<Enter>', 'o<Esc>', opts)

-- Resize
-- keymap('n', "<S-k>", ":resize +2<CR>", opts)
-- keymap('n', "<S-j>", ":resize -2<CR>", opts)
-- keymap('n', "<S-l>", ":vertical resize +2<CR>", opts)
-- keymap('n', "<S-h>", ":vertical resize -2<CR>", opts)

-- +--------+
-- | Visual |
-- +--------+

-- Move Text
keymap("v", "<a-j>", ":m .+2<CR>gv", opts)
keymap("v", "<a-k>", ":m .-2<CR>gv", opts)
keymap('v', 'y', 'ygv<Esc>', opts)


-- Pasting better
keymap("v", "p", '"_dP', opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Terminal
-- keymap('t', '<C-h>', '<C-\\><C-n><C-w>h', term_opts)
-- keymap('t', '<C-j>', '<C-\\><C-n><C-w>j', term_opts)
-- keymap('t', '<C-k>', '<C-\\><C-n><C-w>k', term_opts)
-- keymap('t', '<C-l>', '<C-\\><C-n><C-w>l', term_opts)
