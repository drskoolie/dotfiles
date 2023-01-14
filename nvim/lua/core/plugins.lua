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

  -- +-------+
  -- | latex |
  -- +-------+
  use 'lervag/vimtex'

  -- +-----+
  -- | lsp |
  -- +-----+
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  }

  -- +-----+
  -- | git |
  -- +-----+
  use 'tpope/vim-fugitive'

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
  use 'NLKNguyen/papercolor-theme'
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
  
  use 'p00f/nvim-ts-rainbow'

  -- +--------+
  -- | useful |
  -- +--------+
  use "mbbill/undotree"
  use "nvim-lua/plenary.nvim"
  use "romainl/vim-cool" -- hl-search fix
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


  -- use "lukas-reineke/indent-blankline.nvim"
  
--[[

" ==> Python
" Plug 'a-elhag/jupyter-vim'        " Jupyter mine
" Plug 'goerz/jupytext.vim'         " Jupytext

" ==> Will do
" Plug 'dhruvasagar/vim-table-mode'                   " Table Creator
" Plug 'majutsushi/tagbar'                            " Class/module browser
--]]
