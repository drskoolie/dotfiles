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


  -- +----------+
  -- | junegunn |
  -- +----------+
  use { "junegunn/fzf", run = ":call fzf#install()" }
  use 'junegunn/fzf.vim'

  -- +-----+
  -- | git |
  -- +-----+
  use 'lewis6991/gitsigns.nvim'
  use 'mhinz/vim-signify'     -- Git diff icons on the side of the file lines

  -- +--------+
  -- | themes |
  -- +--------+
  use 'NLKNguyen/papercolor-theme'
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- +------------+
  -- | treesitter |
  -- +------------+

  -- +--------+
  -- | useful |
  -- +--------+
  use 'mbbill/undotree'
  use 'nvim-lua/plenary.nvim'

  -- +-----+
  -- | vim |
  -- +-----+
  use 'easymotion/vim-easymotion'
  use 'psliwka/vim-smoothie'
  use 'SirVer/ultisnips'
  use 'voldikss/vim-floaterm'

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
