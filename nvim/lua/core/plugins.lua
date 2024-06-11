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
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },

  -- +------+
  -- | gams |
  -- +------+
  'zorab47/vim-gams',

  -- +-----+
  -- | git |
  -- +-----+
  'lewis6991/gitsigns.nvim',

  {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration

    -- Only one of these is needed, not both.
    "nvim-telescope/telescope.nvim", -- optional
    "ibhagwan/fzf-lua",              -- optional
  },
  config = false
  },
  -- FZF needed for neogit
  { 'nvim-telescope/telescope-fzf-native.nvim', 
     build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' 
  },

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

  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

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
  -- 'psliwka/vim-smoothie',
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },

  -- +----------+
  -- | whichkey |
  -- +----------+
  'folke/which-key.nvim',
})
