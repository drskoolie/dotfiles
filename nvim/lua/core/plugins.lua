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
  -- use(
  --     {
  --         "lmburns/lf.nvim",
  --         config = function()
  --           -- This feature will not work if the plugin is lazy-loaded
  --           vim.g.lf_netrw = 1
  -- 
  --           require("lf").setup(
  --               {
  --                   escape_quit = false,
  --                   border = "rounded",
  --                   highlights = {FloatBorder = {guifg = require("kimbox.palette").colors.magenta}}
  --               }
  --           )
  -- 
  --           vim.keymap.set("n", "<C-o>", ":Lf<CR>")
  --         end,
  --         requires = {"plenary.nvim", "toggleterm.nvim"}
  --     }
  -- )

  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}

  
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
