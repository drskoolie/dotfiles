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


	d = {
		name = "+debug",
		a = {':FloatermSend a<CR>', 'args'},
		b = {':FloatermSend b<CR>', 'break'},
		c = {':FloatermSend c<CR>', 'continue'},
		C = {':FloatermSend clear ', 'clear'},
		d = {':FloatermSend \\%debug<CR>', '%debug'},
		D = {'iimport ipdb; ipdb.set_trace()<Esc>', 'ipdb'},
		h = {':FloatermSend h ', 'help'},
		i = {':FloatermSend interact<CR>', 'interact'},
		j = {':FloatermSend j ', 'jump'},
		l = {':FloatermSend ll<CR>', 'longlist'},
		L = {':FloatermSend l<CR>', 'list'},
		n = {':FloatermSend n<CR>', 'next'},
		p = {':FloatermSend pp ', 'pretty print'},
		P = {':FloatermSend p<CR>', 'print'},
		q = {':FloatermSend q<CR>', 'quit'},
		r = {':FloatermSend return<CR>', 'return'},
		R = {':FloatermSend retval<CR>', 'retval'},
		s = {':FloatermSend s<CR>', 'step'},
		S = {':FloatermSend sticky<CR>', 'sticky'},
		t = {':FloatermSend tbreak ', 'tbreak'},
		u = {':FloatermSend u<CR>', 'up'},
		U = {':FloatermSend unt ', 'until'},
		w = {':FloatermSend w<CR>', 'where'},
		W = {':FloatermSend whatis<CR>', 'whatis'},
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

        d = {':FloatermSend cd %:p:h<CR>', 'cd'},
        D = {':FloatermSend pwd<CR>',      'pwd'},
		e = {':FloatermSend exit<CR>', 'exit'},
		f = {":w<CR>:execute ':FloatermSend run' expand('%:p')<CR>", 'file'},
		F = {":w<CR>:FloatermSend ipython -i --no-autoindent %:p<CR>", 'File'},
		h = {"Ihelp(<ESC>A)<ESC>:FloatermSend<CR>$x05x", 'help'},
        l = {':FloatermSend<CR>',          'send line'},
        m = {':MatlabCopy<CR>',           'yank matlab'},
        o  = {':call IPythonOpen()<CR>',  'open'},
        p = {':FloatermSend paste<CR>',    'paste'},
        r = {':FloatermSend reset -f<CR>', 'reset'},
        R = {":FloatermSend reset -f<CR>:FloatermSend clear<CR>:w<CR>:execute ':FloatermSend run' expand('%:p')<CR>", 'Reset'},
		v = {'0yeoprint(<ESC>pA)<ESC>:FloatermSend<CR>ddk0', 'variable'},
		V = {'0yeoprint(<ESC>pA)<ESC>:FloatermSend<CR>dd0', 'variable'},
        w = {':FloatermSend whos<CR>',     'whos'},
	},

	l = {
		name = "+latex",

		b = {':w<CR>:silent !bibtex Report.aux<CR>', 'bibtex'},
		B = {':w<CR>:silent !pdflatex %:p:. <CR>:silent !bibtex Report.aux<CR>:silent !pdflatex %:p:. <CR>:silent !pdflatex %:p:. <CR>', 'bibtex full'},
		l = {':w<CR>:silent !pdflatex %:p:. <CR>', 'LaTeX'},
		L = {':w<CR>:!pdflatex %:p:. <CR>', 'LaTeX no hide'},
	},

	n = {
		name = "+neovim",

        i  = {':tabnew<CR>:e ~/.config/nvim/init.lua<CR>',  'init'},
        l  = {':w<CR>:luafile %<CR>',  'lua source'},
        p  = {':tabnew<CR>:e ~/.config/nvim/lua/core/plugins.lua<CR>',  'plugins'},
        w  = {':tabnew<CR>:e ~/.config/nvim/lua/config/whichkey/keys/init.lua<CR>',  'whichkey'},
        v  = {':w<CR>:source %<CR>',  'vim source'},
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
		name = "+terminal",

        c  = {':FloatermSend clear<CR>',  'clear'},
        l  = {':call TerminalRight()<CR>',  'right'},
        s  = {':FloatermSend ',  'send'},
		o  = {':call FloatermOpen()<CR>', 'open'},
        p  = {':FloatermPrev<CR>',  'prev'},
        n  = {':FloatermNext<CR>',  'next'},
        k  = {':FloatermKill<CR>',  'kill'},
        t  = {':FloatermToggle<CR>',  'toggle'},
	}
}

wk_settings.register(wk_mappings, wk_opts)
