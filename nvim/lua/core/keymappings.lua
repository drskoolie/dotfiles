--
-- Set up
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- +---------+
-- | General |
-- +---------+
keymap('n', 'H', 'O<Esc>', opts)
keymap('n', 'L', 'o<Esc>', opts)
-- keymap('n', 'M', 'o<Esc>', opts)

-- +--------+
-- | Insert |
-- +--------+
-- Delete to underscore
keymap('i', '<C-l>', ' <ESC>dT_xa', opts)
-- Make lower case
keymap('i', '<C-j>', '<ESC>viwuea', opts)
-- Make upper case
keymap('i', '<C-h>', '<ESC>viwUea', opts)

-- +--------+
-- | Visual |
-- +--------+
-- Move Text
keymap('v', 'y', 'ygv<Esc>', opts)
keymap("v", "<c-s>", ':sort<CR>', opts)

-- Pasting better
keymap("v", "p", '"_dP', opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- +--------+
-- | Resize |
-- +--------+
keymap("n", "<up>", ":resize +1<cr>", opts)
keymap("n", "<down>", ":resize -1<cr>", opts)
keymap("n", "<right>", ":vert resize +1<cr>", opts)
keymap("n", "<left>", ":vert resize -1<cr>", opts)
