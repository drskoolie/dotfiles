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
keymap("v", "<a-j>", ":m .+2<CR>gv", opts)
keymap("v", "<a-k>", ":m .-2<CR>gv", opts)
keymap('v', 'y', 'ygv<Esc>', opts)
keymap("v", "<c-s>", ':sort<CR>', opts)

-- Pasting better
keymap("v", "p", '"_dP', opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- vim.cmd([[set cmdheight=0]])

-- +--------+
-- | Resize |
-- +--------+
keymap("n", "<up>", ":resize +1<cr>", opts)
keymap("n", "<down>", ":resize -1<cr>", opts)
keymap("n", "<right>", ":vert resize +1<cr>", opts)
keymap("n", "<left>", ":vert resize -1<cr>", opts)

-- +-----------+
-- | Primeagen |
-- +-----------+

-- Move in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
