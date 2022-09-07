-- ==> Core 
require('core/plugins')
require('core/keymappings')
require('core/settings')
require('core/themes')
require('core/highlighted-yank')
require('core/python')

-- ==> Config
require('config/easymotion')
require('config/lualine')
require('config/nvim-colorizer')
require('config/nvim-tree')
require('config/nvim-treesitter')
require('config/sorcery')
require('config/ultisnips')

-- ==> LSP
require('config/lsp')

-- ==> WhichKey
vim.cmd('source ~/dotfiles/nvim/lua/config/whichkey/function.vim') 
require('config/whichkey/config')
require('config/whichkey/keys')
