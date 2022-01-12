-- ==> Misc require('plugins')
require('core/keymappings')
require('core/settings')
require('core/themes')
require('core/highlighted-yank')
require('core/python')

-- ==> Config
require('config/easymotion')
require('config/lualine')
require('config/nvim-colorizer')  -- #FFBB00
require('config/nvim-tree')
require('config/ultisnips')

-- ==> WhichKey
vim.cmd('source ~/.dotfiles/nvim/lua/config/whichkey/function.vim') 
require('config/whichkey/config')
require('config/whichkey/keys')

-- ==> LSP
require('config/coq')
require('config/lsp-pyright')
require('config/lsp-ccls')
