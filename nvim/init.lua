-- ==> Core 
require('core/autocmd')
require('core/plugins')
require('core/themes')
require('core/highlighted-yank')
require('core/keymappings')
require('core/keyword')
require('core/python')
require('core/settings')
require('core/spelling')
require('core/vimscript')

-- ==> Config
require('config/gitsigns')
require('config/lualine')
require('config/neogit')
require('config/nvim-colorizer')
require('config/nvim-neo-tree')
require('config/nvim-treesitter')
require('config/sorcery')
require('config/telescope')

-- ==> LSP
require('lsp/base')

-- ==> WhichKey (Last!)
require('config/whichkey/config')
require('config/whichkey/keys')
