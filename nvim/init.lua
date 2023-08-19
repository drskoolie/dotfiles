-- ==> Core 
require('core/plugins')
require('core/keymappings')
require('core/settings')
require('core/themes')
require('core/highlighted-yank')
require('core/python')
require('core/vimscript')

-- ==> Config
require('config/color-picker')
require('config/gitsigns')
require('config/hop')
require('config/lualine')
require('config/gp')
require('config/neorg')
require('config/nvim-neo-tree')
require('config/nvim-colorizer')
require('config/nvim-treesitter')
require('config/sorcery')
require('config/ultisnips')
require('config/vimtex')

-- ==> Languages
require('languages/sqlite')

-- ==> LSP
require('config/lsp')

-- ==> WhichKey
require('config/whichkey/config')
require('config/whichkey/keys')
