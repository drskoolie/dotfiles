--
-- Set up
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- +---------+
-- | General |
-- +---------+
keymap('n', 'ZZ', '<NOP>', opts)
keymap('n', 'H', 'O<Esc>', opts)
keymap('n', 'L', 'o<Esc>', opts)

-- +--------+
-- | Insert |
-- +--------+
keymap('i', '<C-f>', '<C-x><C-f>', opts)
keymap('i', '<C-y>', '<ESC>viwUea', opts)
keymap('i', '<C-l>', ' <ESC>dT_xa', opts)
keymap('i', '<C-h>', '<ESC>viwuea', opts)

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

-- vim.cmd([[set cmdheight=0]])
