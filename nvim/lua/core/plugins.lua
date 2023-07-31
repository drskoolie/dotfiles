local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- +-------+
  -- | async |
  -- +-------+
  use "nvim-lua/plenary.nvim"
  
  -- +---------+
  -- | chatgpt |
  -- +---------+
  use "robitx/gp.nvim"

  -- +--------+
  -- | colors |
  -- +--------+
  use 'norcalli/nvim-colorizer.lua'
  use 'guns/xterm-color-table.vim' -- :XtermColorTable
  use ({"ziontee113/color-picker.nvim",
      config = function()
          require("color-picker")
      end,
  })
  -- +--------------+
  -- | file browser |
  -- +--------------+
  use {
    "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      requires = { 
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
	  {
        -- only needed if you want to use the commands with "_with_window_picker" suffix
        's1n7ax/nvim-window-picker',
        tag = "v1.*",
        config = function()
          require'window-picker'.setup({
            autoselect_one = true,
            include_current = false,
            filter_rules = {
              -- filter using buffer options
              bo = {
                -- if the file type is one of following, the window will be ignored
                filetype = { 'neo-tree', "neo-tree-popup", "notify" },

                -- if the buffer type is one of following, the window will be ignored
                buftype = { 'terminal', "quickfix" },
              },
            },
            other_win_hl_color = '#e35e4f',
          })
        end,
		}
      }
    }



  -- +-----+
  -- | hop |
  -- +-----+
  use {
	  "phaazon/hop.nvim",
	  branch = 'v2',
	  config = function()
		  require'hop'.setup {}
	  end
  }

  -- +------+
  -- | gams |
  -- +------+
  use 'zorab47/vim-gams'

  -- +-----+
  -- | git |
  -- +-----+
  use 'tpope/vim-rhubarb'
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'

  -- +-------+
  -- | latex |
  -- +-------+
  use 'lervag/vimtex'

  -- +-----+
  -- | lsp |
  -- +-----+
  use {
     'VonHeikemen/lsp-zero.nvim',
     branch = 'v1.x',
     requires = {
       -- LSP Support
       {'neovim/nvim-lspconfig'},
       {'williamboman/mason.nvim'},
       {'williamboman/mason-lspconfig.nvim'},
 
       -- Autocompletion
       {'hrsh7th/nvim-cmp'},
       {'hrsh7th/cmp-buffer'},
       {'hrsh7th/cmp-path'},
       {'saadparwaiz1/cmp_luasnip'},
       {'hrsh7th/cmp-nvim-lsp'},
       {'hrsh7th/cmp-nvim-lua'},
 
       -- Snippets
       {'L3MON4D3/LuaSnip'},
       {'rafamadriz/friendly-snippets'},
     }
   }

  use 'jose-elias-alvarez/null-ls.nvim'

  -- +----------+
  -- | markdown |
  -- +----------+
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })

  -- +--------+
  -- | python |
  -- +--------+
  use 'averms/black-nvim'
	
  -- +-------+
  -- | pulse |
  -- +-------+
  use "danilamihailov/beacon.nvim"
  use "inside/vim-search-pulse"

  -- +--------+
  -- | themes |
  -- +--------+
  use { "catppuccin/nvim", as = "catppuccin" }
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- +------------+
  -- | treesitter |
  -- +------------+
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
  }

  use ('nvim-treesitter/playground')
  
  use 'p00f/nvim-ts-rainbow'

  -- +--------+
  -- | useful |
  -- +--------+
  use "mbbill/undotree"
  use "romainl/vim-cool" -- hl-search fix
  use "tpope/vim-eunuch"
  use "tversteeg/registers.nvim"

  -- +-----+
  -- | vim |
  -- +-----+
  use 'psliwka/vim-smoothie'

  -- +----------+
  -- | whichkey |
  -- +----------+
  use 'folke/which-key.nvim'

end)
