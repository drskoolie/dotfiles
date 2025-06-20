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
require('config/code-companion')
require('config/color-picker')
require('config/gitsigns')
require('config/lualine')
require('config/neogit')
require('config/nvim-colorizer')
require('config/nvim-neo-tree')
require('config/nvim-notify')
require('config/sorcery')
require('config/telescope')

-- ==> Languages
require('languages/sqlite')
require('languages/markdown')

-- ==> LSP
require('lsp/base')
require('lsp/mason')
require('lsp/treesitter')

-- ==> DAP (After LSP!)
require('lsp/dap')

-- ==> WhichKey (Last!)
require('config/whichkey/config')
require('config/whichkey/keys')
