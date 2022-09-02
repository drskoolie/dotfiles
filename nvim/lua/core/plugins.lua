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
  use "lambdalisue/fern.vim"
  use "antoinemadec/fixcursorhold.nvim"

  -- +----------+
  -- | junegunn |
  -- +----------+
  use { "junegunn/fzf", run = ":call fzf#install()" }
  use 'junegunn/fzf.vim'

  -- +-----+
  -- | lsp |
  -- +-----+
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use {'ms-jpq/coq_nvim', branch = 'coq'}
  use {'ms-jpq/coq.artifacts', branch = 'artifacts'}
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  }
  use 'ray-x/lsp_signature.nvim'

  -- +-----+
  -- | git |
  -- +-----+
  use 'lewis6991/gitsigns.nvim'
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

  -- +--------------+
  -- | autocomplete |
  -- +--------------+

  -- +--------+
  -- | useful |
  -- +--------+
  use "mbbill/undotree"
  use "nvim-lua/plenary.nvim"
  use "tversteeg/registers.nvim"
  use "romainl/vim-cool"

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

" ==> Misc
Plug 't9md/vim-choosewin'                 " Choosing windows

" ==> Python
Plug 'dense-analysis/ale'           " ALE
" Plug 'a-elhag/jupyter-vim'        " Jupyter mine
" Plug 'goerz/jupytext.vim'         " Jupytext
" Plug 'vim-python/python-syntax'   " Syntax

" ==> Will do
" Plug 'dhruvasagar/vim-table-mode'                   " Table Creator
" Plug 'majutsushi/tagbar'                            " Class/module browser
winston0410/range-highlight.nvim
--]]
