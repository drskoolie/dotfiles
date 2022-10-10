wk_mappings = {

	[" "] = {
		name = "+<SPC>",

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

			a = {':ColorizerAttachToBuffer<CR>',  'attach'},
			d = {':ColorizerDetachFromBuffer<CR>',  'detach'},
			p = {'<cmd>PickColor<CR>', 'picker'},
			r = {':ColorizerReloadAllBuffers<CR>',  'reload'},
			t = {':ColorizerToggle<CR>',  'toggle'},
			x = {':XtermColorTable<CR>',  'xterm'},
		},
		 
		d = {
			name = "+dates",

			n  = {':r!date +"\\%Y-\\%m-\\%d (\\%H:\\%M)"<CR>kJ', 'now'},

		},

		l = {
			name = "+latex",

			l = {':VimtexCompile<CR>', 'latexmk'},
		},

		m = {
			name = "+markdown",

			p = {':MarkdownPreview<CR>', 'preview'},
			q = {':MarkdownPreviewStop<CR>', 'quit'},
		},



		p = {
			name = "+packer",

			c = {':PackerClean<CR>', 'clean'},
			i = {':PackerInstall<CR>', 'install'},
			u = {':PackerUpdate<CR>', 'update'},
		},

		s = {
			name = "+spell",

			f = {':set textwidth=110<CR>:set fo+=a<CR>', 'format'},
			q = {':set nospell<CR>', 'nospell'},
			t = {':set spell!<CR>', 'spell toggle'},
		},

		u = {
			name = "+undotree",

			f = {':UndotreeFocus<CR>', 'focus'},
			h = {':UndotreeHide<CR>', 'hide'},
			s = {':UndotreeShow<CR>', 'show'},
			t = {':UndotreeToggle<CR>', 'toggle'},
		},
	},
	c = {
		name = "+commands",

		c = {tmux_send('C-c'), 'C-c'},
		d = {tmux_send('C-d'), 'C-d'},
		e = {tmux_send(''), 'enter'},
		l = {tmux_send('ls'), 'ls'},
		p = {tmux_send('pytest'), 'pytest'},
		y = {tmux_send('y'), 'y'},

	},

	d = {
		name = "+debug",
		b = {tmux_send('b'), 'break'},
		c = {tmux_send('c'), 'continue'},
		d = {tmux_send('\\%debug'), '%debug'},
		h = {tmux_send('h'), 'help'},
		i = {':lua set_trace()<CR>', 'ipdb'},
		I = {':lua set_trace_up()<CR>', 'ipdb_up'},
		l = {tmux_send('ll'), 'longlist'},
		L = {tmux_send('l'), 'list'},
		n = {tmux_send('n'), 'next'},
		p = {tmux_send('p'), 'print'},
		q = {tmux_send('q'), 'quit'},
		s = {tmux_send('s'), 'step'},
		S = {tmux_send('sticky'), 'sticky'},
		t = {tmux_send('tbreak'), 'tbreak'},
		u = {tmux_send('u'), 'up'},
		w = {tmux_send('w'), 'where'},
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
		n = {':bnext<CR>', 'next'},
		p = {':bprevious<CR>', 'prev'},
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
		b = {':w<CR>:call Black()<CR>', 'black'},
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
		v = {tmux_send('sop'), 'venv'},
		V = {tmux_send('pip -V'), 'pip -V'},
		-- v = {'0yeoprint(<ESC>pA)<ESC>:FloatermSend<CR>ddk0', 'variable'},
        w = {tmux_send('whos'),     'whos'},
	},
	
	l = {
		name = "+lsp",
		c = {'<cmd>TroubleToggle document_diagnostics<CR>', 'current'},
		d = {'<cmd>TroubleToggle lsp_definitions<CR>', 'definition', silent = true},
		f = {'<cmd>TroubleToggle lsp_references<CR>', 'refs'},
		p = {'<cmd>lua vim.diagnostic.goto_prev()<CR>', 'prev', silent = true},
		n = {'<cmd>lua vim.diagnostic.goto_next()<CR>', 'next', silent = true},
		r = {'<cmd>lua vim.lsp.buf.rename()<CR>', 'rename', silent = true},
		t = {'<cmd>TroubleToggle<CR>', 'toggle'},
		v = {'<cmd>lua vim.diagnostic.disable()<CR>', 'disable virtual'},
		V = {'<cmd>lua vim.diagnostic.enable()<CR>', 'enable virtual'},
		q = {'<cmd>TroubleClose<CR>', 'quit'},
	},
			

	n = {
		name = "+neovim",

		f = {':lua require"nvim-tree".open_replacing_current_buffer()<CR>', 'tree-buffer'}, 
		F = {':NvimTreeOpen<CR>', 'tree-buffer'},
        i = {':tabnew<CR>:e ~/.config/nvim/init.lua<CR>',  'init'},
        I = {':e ~/.config/nvim/init.lua<CR>',  'init'},
		k = {':tabnew<CR>:e ~/.config/nvim/lua/core/keymappings.lua<CR>',  'init'},
        K = {':e ~/.config/nvim/lua/core/keymappings.lua<CR>',  'init'},
        l = {':w<CR>:luafile %<CR>',  'lua source'},
        p = {':tabnew<CR>:e ~/.config/nvim/lua/core/plugins.lua<CR>',  'plugins'},
        P = {':e ~/.config/nvim/lua/core/plugins.lua<CR>',  'plugins'},
		s = {':tabnew<CR>:e ~/.config/nvim/lua/config/sorcery/init.lua<CR>', 'sorcery'},
		S = {':e ~/.config/nvim/lua/config/sorcery/init.lua<CR>', 'sorcery'},
        w = {':tabnew<CR>:e ~/.config/nvim/lua/config/whichkey/keys/init.lua<CR>',  'whichkey'},
        W = {':e ~/.config/nvim/lua/config/whichkey/keys/init.lua<CR>',  'whichkey'},
        t  = {':tabnew<CR>',    'tab new'},
        v = {':w<CR>:source %<CR>',  'vim source'},
	},


	s = {
		name = "+script",

		c = {tmux_send('make %:p:t:r && ./%:p:t:r'), 'make and run'},
		d = {tmux_send('diff --color -EbZ %:p:t ../%:p:t:r/%:p:t'), 'diff'},
		g = {tmux_send('gdb ./%:p:t:r'), 'gdb'},
		G = {tmux_send('gdb --batch --ex run --ex bt --ex q --args ./%:p:t:r'), 'gdb super'},
		l = {tmux_send('make clean'), 'clean'},
		m = {tmux_send('make'), 'make'},
		r = {tmux_send('./%:p:t:r'), 'run'},
		s = {tmux_send('splint ./%:p:t'), 'splint'},
	},

	t = {
		name = "+tmux",

		c = {':TmuxSendClear<CR>', 'clear'},
		k = {':silent !tmux kill-pane -t 1<CR>', 'kill'},
		l  = {tmux_open_pane('-dh'),  'right'},
		L  = {':silent !tmux move-pane -f -s 1 -t 0<CR>',  'right'},
		j  = {tmux_open_pane('-d'),  'down'},
		J  = {':silent !tmux move-pane -h -s 1 -t 0<CR>',  'down'},
	},

}

wk_settings.register(wk_mappings, wk_opts)
