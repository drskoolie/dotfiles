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
	
  -- ==> Snippets
  use 'SirVer/ultisnips'

  -- ==> Colors #FF0000
  use 'norcalli/nvim-colorizer.lua'
  use 'guns/xterm-color-table.vim' -- :XtermColorTable

  -- ==> LSP
  use 'neovim/nvim-lspconfig'
  use 'ms-jpq/coq_nvim'
  use 'ms-jpq/coq.artifacts'

  -- ==> Terminal
  use 'voldikss/vim-floaterm'


  use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() require'nvim-tree'.setup {} end
  }

  -- ==> Math
  use 'willchao612/vim-diagon'

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    -- tag = 'release' -- To use the latest release
  }

  -- ==> Themes
  use 'NLKNguyen/papercolor-theme'

  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- ==> Useful
  use 'easymotion/vim-easymotion'
  use 'psliwka/vim-smoothie'

  -- ==> WhichKey
  use 'folke/which-key.nvim'

end)


--[[
" ==> Git Plugins
Plug 'idanarye/vim-merginal' " Git merginal
Plug 'mhinz/vim-signify'     " Git diff icons on the side of the file lines
Plug 'tpope/vim-fugitive'    " Git command line
Plug 'tpope/vim-rhubarb'     " Go to github

-- ==> Airline
use 'vim-airline/vim-airline'
use 'vim-airline/vim-airline-themes'

" ==> Markdown Plugins
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" ==> Junegunn
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'       " Git commit browser
Plug 'junegunn/vim-easy-align'            " Aligning

" ==> Misc
Plug 'kevinhwang91/rnvimr'                " Ranger
Plug 'mbbill/undotree'                    " Exposes vims undo tree
Plug 't9md/vim-choosewin'                 " Choosing windows

" ==> Python
Plug 'vim-scripts/indentpython.vim' " MultiLine Indent
Plug 'dense-analysis/ale'           " ALE
" Plug 'a-elhag/jupyter-vim'        " Jupyter mine
" Plug 'goerz/jupytext.vim'         " Jupytext
" Plug 'vim-python/python-syntax'   " Syntax

" ==> Will do

" Plug 'dhruvasagar/vim-table-mode'                   " Table Creator
" Plug 'majutsushi/tagbar'                            " Class/module browser
winston0410/range-highlight.nvim
--]]