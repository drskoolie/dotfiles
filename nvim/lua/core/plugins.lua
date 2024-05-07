-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- +--------+
  -- | needed |
  -- +--------+
  'nvim-lua/plenary.nvim',
  'nvim-tree/nvim-web-devicons',
  'MunifTanjim/nui.nvim',
  
  -- +--------+
  -- | colors |
  -- +--------+
  'norcalli/nvim-colorizer.lua',
  'guns/xterm-color-table.vim', -- :XtermColorTable
  {"ziontee113/color-picker.nvim",
      config = function()
          require("color-picker")
      end,
  },

  -- +-------+
  -- | debug |
  -- +-------+
  'mfussenegger/nvim-dap',
  {
	  "rcarriga/nvim-dap-ui", 
	  dependencies = {
		  "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"
	  } 
  },
  'jay-babu/mason-nvim-dap.nvim',

  -- +--------------+
  -- | file browser |
  -- +--------------+
  {
    "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      dependencies = { 
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
      }
    },


  -- +-----+
  -- | hop |
  -- +-----+

  -- +------+
  -- | gams |
  -- +------+
  'zorab47/vim-gams',

  -- +-----+
  -- | git |
  -- +-----+
  'tpope/vim-rhubarb',
  'tpope/vim-fugitive',
  'lewis6991/gitsigns.nvim',

  -- +-------+
  -- | latex |
  -- +-------+
  'lervag/vimtex',

  -- +-----+
  -- | lsp |
  -- +-----+
  {
	  'williamboman/mason.nvim',
	  'williamboman/mason-lspconfig.nvim',
	  'neovim/nvim-lspconfig',
  },
  
  -- +----------+
  -- | markdown |
  -- +----------+
  {
      "iamcco/markdown-preview.nvim",
      build = function() vim.fn["mkdp#util#install"]() end,
  },

  -- typst
  {'kaarmu/typst.vim', ft = {'typst'}},

  -- +-------+
  -- | pulse |
  -- +-------+
  'danilamihailov/beacon.nvim',
  'inside/vim-search-pulse',

  -- +--------+
  -- | themes |
  -- +--------+
  {
      'nvim-lualine/lualine.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  {
  "olimorris/onedarkpro.nvim",
  priority = 1000, -- Ensure it loads first
  },

  -- +------------+
  -- | treesitter |
  -- +------------+
  {
      'nvim-treesitter/nvim-treesitter',
      build = ':TSUpdate',
  },

  'nvim-treesitter/playground',
  'p00f/nvim-ts-rainbow',

  -- +--------+
  -- | useful |
  -- +--------+
  'mbbill/undotree',
  'romainl/vim-cool', -- hl-search fix
  'tpope/vim-eunuch',

  -- +----+
  -- | ui |
  -- +----+
  'rcarriga/nvim-notify',
  'psliwka/vim-smoothie',
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },

  -- +----------+
  -- | whichkey |
  -- +----------+
  'folke/which-key.nvim',

})
