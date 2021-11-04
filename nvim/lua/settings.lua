vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

vim.opt.wrap = false -- Display long lines as just one line

vim.opt.splitbelow = true -- Horizantal splits be below
vim.opt.splitright = true -- Vertical splits be to the right

vim.opt.pumheight = 10 -- Makes popup menu smaller
vim.opt.relativenumber = true -- Shows line numbers 

-- What to treat as a word text object
-- vim.opt.iskeyword = vim.opt.iskeyword + {"-", "_", "."}

-- Copy paste between vim and everything else
vim.opt.clipboard = "unnamedplus" 

-- Standard
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Persistent Undo
-- vim.opt.undodir = "$HOME/.undodir"
-- vim.opt.undofile = true

-- More
-- vim.opt.cursorline = true
