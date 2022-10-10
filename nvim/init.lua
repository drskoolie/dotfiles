-- ==> Needed first
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- ==> Core 
require('core/plugins')
require('core/keymappings')
require('core/settings')
require('core/themes')
require('core/highlighted-yank')
require('core/python')

-- ==> Config
require('config/color-picker')
require('config/hop')
require('config/lualine')
require('config/nvim-colorizer')
require('config/nvim-tree')
require('config/nvim-treesitter')
require('config/sorcery')
require('config/ultisnips')
require('config/vimtex')

-- ==> LSP
require('config/lsp')

-- ==> WhichKey
require('config/whichkey/config')
require('config/whichkey/keys')
