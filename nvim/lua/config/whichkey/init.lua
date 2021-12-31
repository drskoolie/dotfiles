--               __   _,--="=--,_   __
--              /  \."    .-.    "./  \
--             /  ,/  _   : :   _  \/` \
--             \  `| /o\  :_:  /o\ |\__/
--              `-'| :="~` _ `~"=: |
--                 \`     (_)     `/
--          .-"-.   \      |      /   .-"-.
--     .---{     }--|  /,.-'-.,\  |--{     }---.
--      )  (_)_)_)  \_/`~-===-~`\_/  (_(_(_)  (
--     (                                       )
--      )              WhichKey               (
--     '---------------------------------------'

-- Leader Key
vim.g.mapleader  = ' '
local map = vim.api.nvim_set_keymap

-- Timeout
vim.opt.timeoutlen = 0

-- Loading WhichKey
local wk = require("which-key")


--[[
To do:
Add yank, delete, and visual select functions
toggle nowrapscan (find a better solution)
Create a readme + github
replicate it in a projects folder
make a Reddit account and spread the gospel
==> Learn how to map it to y, d, and v
Use the <s> key for everything
--]]


vim.cmd([[ 
function! IPythonOpen()
	FloatermNew --wintype=vsplit --position=right --width=0.5
	normal h
	normal 
	FloatermSend (cd %:p:h ; ipython --no-autoindent; clear)
	call feedkeys("\<Esc>")
endfunction
]])

vim.cmd([[ 
function! TerminalRight()
	FloatermNew --wintype=vsplit --position=right --width=0.5
	normal h
	normal 
	call feedkeys("\<Esc>")
endfunction
]])

vim.cmd([[
" This function highlights a block like Matlab
function! MatlabCopy() abort
	set nowrapscan
	let @/="^##"
	normal Nv
	try
		normal nk$
	catch
		normal G$
	endtry
	normal y
	let @/=""
	set wrapscan
endfunction

command! MatlabCopy call MatlabCopy()
]])



-- Configs
wk.setup {
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = true, -- adds help for motions
      text_objects = false, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
  },
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  operators = { gc = "Comments" },
  key_labels = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- For example:
    ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  popup_mappings = {
    scroll_down = '<c-d>', -- binding to scroll down inside the popup
    scroll_up = '<c-u>', -- binding to scroll up inside the popup
  },
  window = {
    border = "single", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 0, 0, 0, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 0, 0, 0, 0 }, -- extra window padding [top, right, bottom, left]
    winblend = 0
  },
  layout = {
    height = { min = 5, max = 10 }, -- min and max height of the columns
    width = { min = 10, max = 40 }, -- min and max width of the columns
    spacing = 2, -- spacing between columns
    align = "left", -- align columns left, center or right
  },

  ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
  show_help = false, -- show help message on the command line when the popup is visible
  triggers = "auto", -- automatically setup triggers
  -- triggers = {"<leader>"} -- or specify a list manually
  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for key maps that start with a native binding
    -- most people should not need to change this
    i = { "j", "k" },
    v = { "j", "k" },
  },
}

-- Keys Themselves
local opts = {prefix = '<leader>'}

local mappings = {

	a = {':noh<CR>', 'noh'},

	[" "] = {
		name = "+easymotion",

		
		-- https://github.com/easymotion/vim-easymotion/blob/master/doc/easymotion.txt
        b  = {'<Plug>(easymotion-b)',  'b'},
        B  = {'<Plug>(easymotion-B)',  'B'},
        e  = {'<Plug>(easymotion-e)',  'e'},
        E  = {'<Plug>(easymotion-E)',  'E'},
        f  = {'<Plug>(easymotion-f)',  'f'},
        F  = {'<Plug>(easymotion-F)',  'F'},
        j  = {'<Plug>(easymotion-j)',  'j'},
        k  = {'<Plug>(easymotion-k)',  'k'},
        n  = {'<Plug>(easymotion-n)',  'n'},
        N  = {'<Plug>(easymotion-N)',  'N'},
        s  = {'<Plug>(easymotion-s)',  's'},
        t  = {'<Plug>(easymotion-t)',  't'},
        T  = {'<Plug>(easymotion-T)',  'T'},
        w  = {'<Plug>(easymotion-w)',  'w'},
        W  = {'<Plug>(easymotion-W)',  'W'},

	},

	b = {
		name = "+buffers",

        c  = {':tabclose<CR>',  'tab close'},
        d  = {':ls<CR>:bdelete',  'del'},
        g  = {':ls<CR>:b',  'goto'},
        l  = {':b#<CR>',        'last'},
        n  = {':bnext<CR>',     'next'},
        p  = {':bprev<CR>',     'prev'},
        t  = {':tabnew<CR>',    'tab new'},
	},


	d = {
		name = "+cmd",

		b = {
			name = "+boxes",

			b = {'!boxes -a hcvc -d ', 'boxes', mode='v'},
			c = {'!boxes -a hcvc -d columns<CR>', 'columns', mode='v'},
			d = {'!boxes -a hcvc -d dog<CR>', 'dog', mode='v'},
			g = {'!boxes -a hcvc -d girl<CR>', 'girl', mode='v'},
			i = {'!boxes -a hcvc -d ian jones<CR>', 'ian jones', mode='v'},
			m = {'!boxes -a hcvc -d mouse<CR>', 'mouse', mode='v'},
			n = {'!boxes -a hcvc -d spring<CR>', 'spring', mode='v'},
			p = {'!boxes -a hlvt -d parchment<CR>', 'parchment', mode='v'},
			s = {'!boxes -a hcvc -d stone<CR>', 'stone', mode='v'},
			u = {'!boxes -a hcvc -d unicornsay<CR>', 'unicornsay', mode='v'},
			v = {'!boxes -a hcvc -d unicornthink<CR>', 'unicornthink', mode='v'},
			y = {'!boxes -a hcvc -d boy<CR>', 'boy', mode='v'},
		},

		d = {
			name = "+diagon",

			d  = {':Diagon ',  'diagon'},
			D  = {':!diagon ',  'diagon', mode='v'},
			e  = {':Diagon Frame<CR>',  'frame'},
			E  = {':!diagon Frame<CR>',  'frame', mode='v'},
			f  = {':Diagon Flowchart<CR>',  'flowchart'},
			F  = {':!diagon Flowchart<CR>',  'flowchart', mode='v'},
			g  = {':Diagon GraphDAG<CR>',  'graph_dag'},
			G  = {':!diagon GraphDAG<CR>',  'graph_dag', mode='v'},
			m  = {':Diagon Math<CR>',  'math'},
			M  = {':!diagon Math<CR>',  'math', mode='v'},
			r  = {':Diagon Tree<CR>',  'tree'},
			R  = {':!diagon Tree<CR>',  'tree', mode='v'},
			s  = {':Diagon Sequence<CR>',  'sequence'},
			S  = {':!diagon Sequence<CR>',  'sequence', mode='v'},
			t  = {':Diagon Table<CR>',  'table'},
			T  = {':!diagon Table<CR>',  'table', mode='v'},
		},
	},


	h = {
		name = "+hw",
		c = {':FloatermSend c++ ece650-a2.cpp -std=c++11 -o ece650-a2<CR>', 'compile'},
		t = {':FloatermSend clang-tidy ece650-a2.cpp -- -std=c++11<CR>', 'tidy'},
		r = {':FloatermSend ./ece650-a2<CR>', 'run'},
		R = {':FloatermSend ./ece650-a2 ', 'run_'},
	},

	l = {
		name = "+language",
        c = {':w<CR>:FloatermSend g++ -pthread -Wall %:p:t -o %:p:t:r<CR>', 'compile'},
		b = {':w<CR>:silent !bibtex Report.aux<CR>', 'bibtex'},
		B = {':w<CR>:silent !pdflatex %:p:. <CR>:silent !bibtex Report.aux<CR>:silent !pdflatex %:p:. <CR>:silent !pdflatex %:p:. <CR>', 'bibtex full'},
		l = {':w<CR>:silent !pdflatex %:p:. <CR>', 'LaTeX'},
		L = {':w<CR>:!pdflatex %:p:. <CR>', 'LaTeX no hide'},
        t = {':FloatermSend ./%:p:t:r < mytest.txt <CR>', 'test'},
        T = {':FloatermSend ./rgen <mytest.txt | python3 ece650-a1.py <CR>', 'test'},
        k = {':FloatermSend ./rgen <mytest.txt | python3 ece650-a1.py | ./ece650-a2 <CR>', 'test'},
        r = {':FloatermSend ./%:p:t:r<CR>', 'run'},
	},

	i = {
		name = "+ipython",
        D = {':FloatermSend pwd<CR>',      'pwd'},
        d = {':FloatermSend cd %:p:h<CR>', 'cd'},
        l = {':FloatermSend<CR>',          'send line'},
        m = {':MatlabCopy<CR>',           'yank matlab'},
        o  = {':call IPythonOpen()<CR>',  'open'},
        p = {':FloatermSend paste<CR>',    'paste'},
        r = {':FloatermSend reset -f<CR>', 'reset'},
        w = {':FloatermSend whos<CR>',     'whos'},
	},

	m = {
		name = "+misc", -- #00BB00


        c  = {':NvimTreeClose<CR>',  'close'},
        f  = {':NvimTreeFindFile<CR>',  'find file'},
        o  = {':NvimTreeOpen<CR>',  'open'},
        r  = {':NvimTreeRefresh<CR>',  'refresh'},
        s  = {':NvimTreeFocus<CR>',  'focus'},
        t  = {':NvimTreeToggle<CR>',  'toggle'},
	},

	o = {
		name = "+open",
        i  = {':new<CR>:e ~/.config/nvim/init.lua<CR>',  'init'},
        p  = {':new<CR>:e ~/.config/nvim/lua/plugins.lua<CR>',  'plugins'},
        w  = {':new<CR>:e ~/.config/nvim/lua/config/whichkey/init.lua<CR>',  'whichkey'},
	},

	r = {
		name = "+routine",

        a  = {':ColorizerAttachToBuffer<CR>',  'attach'},
        d  = {':ColorizerDetachFromBuffer<CR>',  'detach'},
        r  = {':ColorizerReloadAllBuffers<CR>',  'reload'},
        t  = {':ColorizerToggle<CR>',  'toggle'},
        x  = {':XtermColorTable<CR>',  'xterm'},

        i  = {':PackerInstall<CR>',  'install'},
        I  = {':PackerClean<CR>',  'clean'},

		u = {':UltiSnipsEdit<CR>', 'ultisnips'},
		U = {':tabedit ~/.dotfiles/nvim/UltiSnips/all.snippets<CR>', 'snips-all'},

        l  = {':w<CR>:luafile %<CR>',  'source'},

        p  = {':pwd<CR>',  'pwd'},
        c  = {':cd %:p:h<CR>',  'cd'},
	},

	t = {
		name = "+terminal",

        c  = {':FloatermSend clear<CR>',  'clear'},
        l  = {':call TerminalRight()<CR>',  'right'},
        s  = {':FloatermSend ',  'send'},
        p  = {':FloatermPrev<CR>',  'prev'},
        n  = {':FloatermNext<CR>',  'next'},
        k  = {':FloatermKill<CR>',  'kill'},
        t  = {':FloatermToggle<CR>',  'toggle'},
	},


}


wk.register(mappings, opts)
-- print(vim.inspect(mappings))

-- How to source lua file
