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

  -- +--------------+
  -- | file browser |
  -- +--------------+
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- +----------+
  -- | junegunn |
  -- +----------+
  use { "junegunn/fzf", run = ":call fzf#install()" }
  use 'junegunn/fzf.vim'

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
  
  use 'mhinz/vim-signify'     -- Git diff icons on the side of the file lines
  use 'tpope/vim-fugitive'

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
  use "ggandor/leap.nvim"
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })
  use "mbbill/undotree"
  use "nvim-lua/plenary.nvim"
  use "romainl/vim-cool"
  use "tversteeg/registers.nvim"

  -- +-----+
  -- | vim |
  -- +-----+
  use 'easymotion/vim-easymotion'
  use 'psliwka/vim-smoothie'

  -- +----------+
  -- | whichkey |
  -- +----------+
  use 'folke/which-key.nvim'

end)


--[[

" ==> Python
Plug 'dense-analysis/ale'           " ALE
" Plug 'a-elhag/jupyter-vim'        " Jupyter mine
" Plug 'goerz/jupytext.vim'         " Jupytext

" ==> Will do
" Plug 'dhruvasagar/vim-table-mode'                   " Table Creator
" Plug 'majutsushi/tagbar'                            " Class/module browser
winston0410/range-highlight.nvim
--]]
