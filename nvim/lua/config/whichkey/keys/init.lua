wk_mappings = {

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

	a = {':noh<CR>', 'noh'},

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


	c = {
		name = "+commands",

		c = {tmux_send('cd ..;ls'), 'cd'},
		C = {tmux_send('C-c'), 'C-c'},
		d = {tmux_send('C-d'), 'C-d'},
		l = {tmux_send('ls'), 'ls'},
		y = {tmux_send('y'), 'y'},

	},

	d = {
		name = "+debug",
		a = {tmux_send('a'), 'args'},
		b = {tmux_send('b'), 'break'},
		c = {tmux_send('c'), 'continue'},
		d = {tmux_send('\\%debug'), '%debug'},
		h = {tmux_send('h'), 'help'},
		j = {':FloatermSend j ', 'jump'},
		l = {tmux_send('ll'), 'longlist'},
		L = {tmux_send('l'), 'list'},
		n = {tmux_send('n'), 'next'},
		p = {':FloatermSend pp ', 'pretty print'},
		P = {tmux_send('p'), 'print'},
		q = {tmux_send('q'), 'quit'},
		r = {tmux_send('return'), 'return'},
		R = {tmux_send('retval'), 'retval'},
		s = {tmux_send('s'), 'step'},
		S = {tmux_send('sticky'), 'sticky'},
		t = {tmux_send('tbreak'), 'tbreak'},
		u = {tmux_send('u'), 'up'},
		U = {':FloatermSend unt ', 'until'},
		w = {tmux_send('w'), 'where'},
		W = {tmux_send('whatis'), 'whatis'},
	},

	f = {
		name = '+fzf',

		a = {':Ag<CR>', 'ag'},
		b = {':Buffers<CR>', 'buffers'},
		c = {':Commands<CR>', 'commands'},
		f = {':Files ~<CR>', 'files ~'},
		F = {':Files<CR>', 'files'},
		g = {':GFiles<CR>', 'gfiles'},
		h = {':History<CR>', 'history'},
		H = {':History:<CR>', 'history commands'},
		l = {':BLines<CR>', 'blines'},
		L = {':Lines<CR>', 'lines'},
		m = {':Marks<CR>', 'marks'},
		r = {':Rg<CR>', 'rg'},
		s = {':Snippets<CR>', 'snippets'},
		t = {':BTags<CR>', 'btags'},
		T = {':Tags<CR>', 'tags'},
		w = {':Windows<CR>', 'windows'},

	},

	g = {
		name = '+git',

		c = {':BCommits<CR>', 'commits'},
		C = {':Commits<CR>', 'bcommits'},
		d = {':SignifyDiff<CR>', 'diff'},
		f = {':SignifyFold<CR>', 'fold'},
		h = {':SignifyToggleHighlight<CR>', 'highlight'},
		p = {':SignifyHunkDiff<CR>', 'preview hunk'},
		s = {':GFiles?<CR>', 'status'},
		t = {':SignifyToggle<CR>', 'toggle'},
		u = {':SignifyHunkUndo<CR>', 'undo'},
	},

	i = {
		name = "+ipython",

		a = {tmux_send('\\%paste'), 'paste'},
		c = {tmux_send('pwd'), 'pwd'},
		d = {tmux_send('dea'), 'dea'},
		e = {tmux_send('exit'), 'exit'},
		f = {tmux_send('run %:p'), 'file'},
		g = {tmux_send('sog'), 'venv_global'},
        l = {':norm ^"+y$<CR>:TmuxPaste<CR>',          'send line'},
        m = {[[:norm mm<CR>:norm "+ym<CR>:lua tmux_send('\\%paste', 'vim_cmd')<CR>:norm 'm<CR>]],           'matlab'},
		o = {tmux_send('ipython --no-autoindent'), 'open'},
        p = {':TmuxPaste<CR>',    'paste'},
		P = {'"+y:TmuxPaste<CR>', 'visual', mode='v'},
        r = {tmux_send('reset -f'), 'reset'},
		s = {':lua set_trace()<CR>', 'ipdb'},
		S = {':lua set_trace_up()<CR>', 'ipdb_up'},
		t = {':w<CR>:lua tmux_pytest()<CR>', 'pytest'},
		v = {tmux_send('sop'), 'venv'},
		V = {tmux_send('pip -V'), 'pip -V'},
		-- v = {'0yeoprint(<ESC>pA)<ESC>:FloatermSend<CR>ddk0', 'variable'},
		-- V = {'0yeoprint(<ESC>pA)<ESC>:FloatermSend<CR>dd0', 'variable'},
        w = {tmux_send('whos'),     'whos'},
	},

	n = {
		name = "+neovim",

        i = {':tabnew<CR>:e ~/.config/nvim/init.lua<CR>',  'init'},
        l = {':w<CR>:luafile %<CR>',  'lua source'},
        p = {':tabnew<CR>:e ~/.config/nvim/lua/core/plugins.lua<CR>',  'plugins'},
		s = {':tabnew<CR>:e ~/.config/nvim/lua/config/sorcery/init.lua<CR>', 'sorcery'},
        w = {':tabnew<CR>:e ~/.config/nvim/lua/config/whichkey/keys/init.lua<CR>',  'whichkey'},
        v = {':w<CR>:source %<CR>',  'vim source'},
	},

	p = {
		name = "+plugins",

		a = {
			name = "+accounting",

			b = {':w|!bean-report % balances<CR>', 'balances'},
			c = {':w|!bean-check %<CR>', 'check'},
		},

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

		c = {
			name = "+colorizer",

			a  = {':ColorizerAttachToBuffer<CR>',  'attach'},
			d  = {':ColorizerDetachFromBuffer<CR>',  'detach'},
			r  = {':ColorizerReloadAllBuffers<CR>',  'reload'},
			t  = {':ColorizerToggle<CR>',  'toggle'},
			x  = {':XtermColorTable<CR>',  'xterm'},
		},
		 
		d = {
			name = "+dates",

			c  = {':r!date "+☢ [\\%j] --> \\%F (\\%A) \\%n" -d "', 'custom'},
			n  = {':r!date "+☢ [\\%j] --> \\%F (\\%A) \\%n"<CR>', 'now'},
			t  = {':r!date "+☢ [\\%j] --> \\%F (\\%A) \\%n" -d tomorrow<CR>', 'tomorrow'},
			v  = {'!xargs -I {} date -d {} "+☢ [\\%j] --> \\%F (\\%A) \\%n"<CR>', 'visual', mode='v'},
			y  = {':r!date "+☢ [\\%j] --> \\%F (\\%A) \\%n" -d yesterday<CR>', 'yesterday'},

			w = {
				name = "+weeks",

				m  = {':r!date "+☢ [\\%j] --> \\%F (\\%A) \\%n" -d Monday<CR>', 'mon'},
				t  = {':r!date "+☢ [\\%j] --> \\%F (\\%A) \\%n" -d Tuesday<CR>', 'tues'},
				w  = {':r!date "+☢ [\\%j] --> \\%F (\\%A) \\%n" -d Wednesday<CR>', 'wedn'},
				r  = {':r!date "+☢ [\\%j] --> \\%F (\\%A) \\%n" -d Thursday<CR>', 'thurs'},
				f  = {':r!date "+☢ [\\%j] --> \\%F (\\%A) \\%n" -d Friday<CR>', 'fri'},
				s  = {':r!date "+☢ [\\%j] --> \\%F (\\%A) \\%n" -d Saturday<CR>', 'sat'},
				u  = {':r!date "+☢ [\\%j] --> \\%F (\\%A) \\%n" -d Sunday<CR>', 'sun'},
			},
		},

		l = {
			name = "+latex",

			b = {':w<CR>:silent !bibtex Report.aux<CR>', 'bibtex'},
			B = {':w<CR>:silent !pdflatex %:p:. <CR>:silent !bibtex Report.aux<CR>:silent !pdflatex %:p:. <CR>:silent !pdflatex %:p:. <CR>', 'bibtex full'},
			l = {':w<CR>:silent !pdflatex %:p:. <CR>', 'LaTeX'},
			L = {':w<CR>:!pdflatex %:p:. <CR>', 'LaTeX no hide'},
		},



		p = {
			name = "+packer",

			c = {':PackerClean<CR>', 'clean'},
			i = {':PackerInstall<CR>', 'install'},
			u = {':PackerUpdate<CR>', 'update'},
		},

		s = {
			name = "+ultisnips",

			a = {':tabedit ~/.dotfiles/nvim/lua/config/ultisnips/snips/all.snippets<CR>', 'all'},
			e = {':UltiSnipsEdit<CR>', 'edit'},
		},

		u = {
			name = "+undotree",

			f = {':UndotreeFocus<CR>', 'focus'},
			h = {':UndotreeHide<CR>', 'hide'},
			s = {':UndotreeShow<CR>', 'show'},
			t = {':UndotreeToggle<CR>', 'toggle'},
		},
	},


	t = {
		name = "+tmux",

		c = {tmux_send('clear'), 'clear'},
		e = {tmux_send(''), 'enter'},
		l  = {tmux_open_pane('-dh'),  'right'},
		L  = {tmux_open_pane('-h'),  'right+'},
		h  = {tmux_open_pane('-bdh'),  'left'},
		H  = {tmux_open_pane('-bh'),  'left+'},
		k  = {tmux_open_pane('-bd'),  'up'},
		K  = {tmux_open_pane('-b'),  'up+'},
		j  = {tmux_open_pane('-d'),  'down'},
		J  = {tmux_open_pane(''),  'down+'},
	},


}

wk_settings.register(wk_mappings, wk_opts)
