wk_mappings = {
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


	c = {
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

		c = {
			name = "+beancount",

			b = {':w|!bean-report % balances<CR>', 'balances'},
			c = {':w|!bean-check %<CR>', 'check'},
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

	d = {
		name = "+debug",
		a = {':FloatermSend a<CR>', 'args'},
		b = {':FloatermSend b<CR>', 'break'},
		c = {':FloatermSend c<CR>', 'continue'},
		C = {':FloatermSend clear ', 'clear'},
		d = {':FloatermSend d<CR>', 'down'},
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


	l = {
		name = "+language",
		a = {':w<CR>:FloatermSend lua %:p<CR>', 'lua'},
		b = {':w<CR>:silent !bibtex Report.aux<CR>', 'bibtex'},
		B = {':w<CR>:silent !pdflatex %:p:. <CR>:silent !bibtex Report.aux<CR>:silent !pdflatex %:p:. <CR>:silent !pdflatex %:p:. <CR>', 'bibtex full'},
		l = {':w<CR>:silent !pdflatex %:p:. <CR>', 'LaTeX'},
		L = {':w<CR>:!pdflatex %:p:. <CR>', 'LaTeX no hide'},
		m = {':w<CR>:!make<CR>', 'make'},
		M = {':w<CR>:FloatermSend make<CR>', 'Make'},
		r = {':w<CR>:FloatermSend ./%:r<CR>', 'run'},
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

	p = {
		name = "+python",
		f = {":w<CR>:execute ':FloatermSend python3 ' expand('%:p')<CR>", 'run file'},
		F = {":w<CR>:FloatermSend python3 %:p ", 'run file'},
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
        i  = {':tabnew<CR>:e ~/.config/nvim/init.lua<CR>',  'init'},
        p  = {':tabnew<CR>:e ~/.config/nvim/lua/core/plugins.lua<CR>',  'plugins'},
        w  = {':tabnew<CR>:e ~/.config/nvim/lua/config/whichkey/keys/init.lua<CR>',  'whichkey'},
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
		U = {':tabedit ~/.dotfiles/nvim/lua/config/ultisnips/snips/all.snippets<CR>', 'snips-all'},

        l  = {':w<CR>:luafile %<CR>',  'source'},

        p  = {':pwd<CR>',  'pwd'},
        c  = {':cd %:p:h<CR>',  'cd'},
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
