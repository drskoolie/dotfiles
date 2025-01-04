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
vim.cmd([[
set clipboard+=unnamedplus
let g:clipboard = {
          \   'name': 'win32yank-wsl',
          \   'copy': {
          \      '+': 'win32yank -i --crlf',
          \      '*': 'win32yank -i --crlf',
          \    },
          \   'paste': {
          \      '+': 'win32yank -o --lf',
          \      '*': 'win32yank -o --lf',
          \   },
          \   'cache_enabled': 0,
          \ }
]])

-- Standard
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Persistent Undo
-- vim.opt.undodir = "~/.dotfiles/nvim/.undodir"
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

-- Additions
vim.opt.signcolumn = 'yes'

-- Primeagen
vim.opt.scrolloff = 8
