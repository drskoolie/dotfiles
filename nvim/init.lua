-- ==> Core 
require('core/highlighted-yank')
require('core/keymappings')
require('core/keyword')
require('core/plugins')
require('core/python')
require('core/settings')
require('core/spelling')
require('core/themes')
require('core/vimscript')

-- ==> Config
require('config/color-picker')
require('config/gitsigns')
require('config/hop')
require('config/lualine')
require('config/nvim-colorizer')
require('config/nvim-neo-tree')
require('config/nvim-notify')
require('config/nvim-treesitter')
require('config/sorcery')
require('config/telescope')
require('config/vimtex')

-- ==> Languages
require('languages/sqlite')
require('languages/markdown')

-- ==> LSP
require('lsp/base')
require('lsp/mason')
-- require('lsp/nvim-lint')

-- ==> WhichKey
require('config/whichkey/config')
require('config/whichkey/keys')
