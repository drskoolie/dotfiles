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
  -- | needed |
  -- +--------+
  use "nvim-lua/plenary.nvim"
  use "nvim-tree/nvim-web-devicons"
  use "MunifTanjim/nui.nvim"
  
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
      branch = "v2.x"}


  -- +------+
  -- | font |
  -- +------+
  
  use {
      '2kabhishek/nerdy.nvim',
      dependencies = {
          'stevearc/dressing.nvim',
          'nvim-telescope/telescope.nvim',
      },
      cmd = 'Nerdy'}

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
  use 'neovim/nvim-lspconfig'
  
  -- +----------+
  -- | markdown |
  -- +----------+
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })

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

  -- +-----+
  -- | vim |
  -- +-----+
  use 'psliwka/vim-smoothie'

  -- +----------+
  -- | whichkey |
  -- +----------+
  use 'folke/which-key.nvim'

end)

-- ToDo
  -- +----------+
  -- | leetcode |
  -- +----------+
  --	use({
  --    "kawre/leetcode.nvim",
  --    build = ":TSUpdate html",
  --    dependencies = {
  --        "nvim-treesitter/nvim-treesitter",
  --        "nvim-telescope/telescope.nvim",
  --        "nvim-lua/plenary.nvim", -- required by telescope
  --        "MunifTanjim/nui.nvim",
  --
  --        -- optional
  --        "rcarriga/nvim-notify",
  --        "nvim-tree/nvim-web-devicons",
  --    }})

--
