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
  -- | align |
  -- +-------+
  use 'godlygeek/tabular'

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
  use(
      {
          "lmburns/lf.nvim",
          config = function()
            -- This feature will not work if the plugin is lazy-loaded
            vim.g.lf_netrw = 1
  
            require("lf").setup(
                {
                    escape_quit = false,
                    border = "rounded",
                    highlights = {FloatBorder = {guifg = require("kimbox.palette").colors.magenta}}
                }
            )
  
            vim.keymap.set("n", "<C-o>", ":Lf<CR>")
          end,
          requires = {"plenary.nvim", "toggleterm.nvim"}
      }
  )

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

  -- +-------+
  -- | games |
  -- +-------+
  use 'ThePrimeagen/vim-be-good'

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
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  }

  -- +----------+
  -- | markdown |
  -- +----------+
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })

  -- +-------+
  -- | neorg |
  -- +-------+
  use {
      "nvim-neorg/neorg",
  --    run = ":Neorg sync-parsers", -- This is the important bit!
  }

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


  -- use "lukas-reineke/indent-blankline.nvim"
  
--[[

" ==> Python
" Plug 'a-elhag/jupyter-vim'        " Jupyter mine
" Plug 'goerz/jupytext.vim'         " Jupytext

" ==> Will do
" Plug 'dhruvasagar/vim-table-mode'                   " Table Creator
" Plug 'majutsushi/tagbar'                            " Class/module browser
--]]
