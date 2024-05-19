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
		 
		f = {
			name = "+figlet",

			b = {'!figlet -f big <CR>', 'big', mode='v'},
			B = {'!figlet -f bubble <CR>', 'bubble', mode='v'},
			f = {'!figlet <CR>', 'figlet', mode='v'},
			m = {'!figlet -f mono9 <CR>', 'mono9', mode='v'},
			M = {'!figlet -f mono12 <CR>', 'mono12', mode='v'},
			s = {'!figlet -f script <CR>', 'script', mode='v'},
		},


		g = {
			name = "+gams",

			m = {':w<CR>:silent !gams %:h/main.gms<CR>', 'main'},
			M = {':w<CR>:!gams %:h/main.gms<CR>', 'main'},
			o = {':w<CR>:!gams %:p:t:r.gms > %:p:t:r.out<CR>', 'out'},
			r = {':w<CR>:!gams %:p:t:r.gms<CR>', 'run'},
			s = {':w<CR>:silent !gams %:p:t:r.gms > %:p:t:r.out<CR>', 'silent'},
			w = {':w<CR>:vsp %:p:t:r.lst<CR>G:sp %:p:t:r.out<CR>G', 'window'},
		},

		i = {
			name = "+insert",

			f  = {'i<C-r>=expand("%:p:t:r")<CR><Esc>', 'file'},
			n  = {':r!date +"\\%Y-\\%m-\\%d (\\%H:\\%M)"<CR>kJ', 'now'},

		},

		m = {
			name = "+markdown",

			p = {':MarkdownPreview<CR>', 'preview'},
			q = {':MarkdownPreviewStop<CR>', 'quit'},
		},


		s = {
			name = "+spell",

			a = {':set textwidth=110<CR>:set fo=tc<CR>:set spell<CR>', 'all'},
			A = {':set textwidth=150<CR>:set fo=tc<CR>:set spell<CR>', 'All'},
			f = {'<ESC>[sz=1<CR>A', 'fix'},
			F = {'[s<C-o>z=1<CR><C-o>A', 'fix'},
			n = {':set nospell<CR>', 'nospell'},
			t = {':set spell!<CR>', 'spell toggle'},
		},
	},	

	b = {
		name = "+buffers",

		s = {":Telescope buffers<CR>", 'buffers'},
		c = {':cd %:p:h<CR>', 'cd'},
		m = {':tabm +1<CR>',    'tab mov +1'},
		M = {':tabm -1<CR>',    'tab mov -1'},
		n = {':bn<CR>', 'next'},
		p = {':bp<CR>', 'prev'},
		t  = {':tabnew<CR>',    'tab new'},
	},

	c = {
		name = "+coding",

		c = {tmux_send('python3 make.py clean'), 'clean'},
		l = {tmux_send('lua  %:p'), 'lua'},
		m = {tmux_send('python3 make.py compile'), 'make'},
		r = {tmux_send('python3 make.py run'), 'run'},
		t = {tmux_send('python3 make.py test'), 'test'},
		w = {tmux_send('python3 make.py warning'), 'warning'},
	},

	f = {':Neotree<CR>', 'neotree'},

	p = {
		name = "+dap",

		b = {'<cmd> lua require("dap").toggle_breakpoint()<CR>', 'breakpoint'},
		B = {'<cmd> lua require("dap").clear_breakpoint()<CR>', 'clear'},
		c = {'<cmd> lua require("dap").continue()<CR>', 'continue'},
		g = {'<cmd> lua require("dap").goto_()<CR>', 'goto'},
		f = {
			name = "+frame",
			d = {'<cmd> lua require("dap").down()<CR>', 'down'},
			f = {'<cmd> lua require("dap").focus_frame()<CR>', 'focus'},
			r = {'<cmd> lua require("dap").restart_frame()<CR>', 'restart'},
			u = {'<cmd> lua require("dap").up()<CR>', 'up'},
		},
		o = {
			"+open",

			b = {"<cmd> lua require('lsp/dap/focus_buffer').focus_buffer('DAP Breakpoints')<CR>",'breakpoints'},
			f = {"<cmd> lua require('lsp/dap/focus_buffer').focus_buffer('DAP Stacks')<CR>",'frame'},
			h = {"<cmd> lua require('lsp/dap/focus_buffer').focus_buffer('DAP Hover')<CR>",'hover'},
			r = {"<cmd> lua require('lsp/dap/focus_buffer').focus_buffer('[dap-repl]')<CR>",'repl'},
			o = {"<cmd> lua require('lsp/dap/focus_buffer').focus_buffer_file()<CR>",'og'},
			s = {"<cmd> lua require('lsp/dap/focus_buffer').focus_buffer('DAP Scopes')<CR>",'scopes'},
			t = {"<cmd> lua require('lsp/dap/focus_buffer').focus_buffer('[dap-terminal]')<CR>",'terminal'},
			w = {"<cmd> lua require('lsp/dap/focus_buffer').focus_buffer('DAP Watches')<CR>",'watches'},

		},
		r = {'<cmd> lua require("dap").restart()<CR>', 'restart'},
		s = {
			name = "+step",
			b = {'<cmd> lua require("dap").step_back()<CR>', 'back'},
			c = {'<cmd> lua require("dap").run_to_cursor()<CR>', 'run to cursor'},
			i = {'<cmd> lua require("dap").step_into()<CR>', 'into'},
			o = {'<cmd> lua require("dap").step_out()<CR>', 'out'},
			v = {'<cmd> lua require("dap").step_over()<CR>', 'over'},
		},
		t = {'<cmd> lua require("dap").terminate()<CR>', 'terminate'},
		u = {'<cmd> lua require("dapui").toggle()<CR>', 'ui'},
		U = {'<cmd> lua require("dapui").open({reset = true})<CR>', 'ui reset'},
	},

	d = {
		name = "+debug",
		b = {tmux_send('b'), 'break'},
		c = {tmux_send('c'), 'continue'},
		d = {tmux_send('d'), 'down'},
		h = {tmux_send('h'), 'help'},
		i = {':lua set_trace()<CR>', 'ipdb'},
		I = {':lua set_trace_up()<CR>', 'ipdb_up'},
		l = {tmux_send('ll'), 'longlist'},
		L = {tmux_send('l'), 'list'},
		n = {tmux_send('n'), 'next'},
		q = {tmux_send('q'), 'quit'},
		p = {tmux_send('\\%debug'), '%debug'},
		s = {tmux_send('s'), 'step'},
		S = {tmux_send('sticky'), 'sticky'},
		u = {tmux_send('u'), 'up'},
		w = {tmux_send('w'), 'where'},
	},

	g = {
		name = "+git",

		b = {':Gitsigns blame_line<CR>', 'blame'},
		c = {':Git commit -v<CR>', 'commit -v'},
		C = {':Git commit<CR>', 'commit'},
		f = {':Git fetch<CR>', 'fetch'},
		g = {':Ggrep -q -n -I ', 'grep'},
		l = {
			name = "+log",

			a = {':Git log --all --decorate --oneline --graph<CR>', 'all'},
		},


		h = {
			name = "+hunks",

			h = {':Gitsigns preview_hunk<CR>', 'hunk'},
			n = {':Gitsigns next_hunk<CR>', 'next hunk'},
			p = {':Gitsigns prev_hunk<CR>', 'prev hunk'},
			q = {':Gitsigns setqflist<CR>', 'quickfix'},
		},
		H = {':GBrowse<CR>', 'github'},
		m = {':Git merge<CR>', 'merge'},
		p = {':Git push<CR>', 'push'},
		P = {':Git! push<CR>', 'push!'},
		r = {
			name = "+reset",

			b = {':Gitsigns reset_buffer<CR>', 'buffer'},
			h = {':Gitsigns reset_hunk<CR>', 'hunk'},
		},
		s = {
			name = "+stage",

			b = {':Gitsigns stage_buffer<CR>', 'buffer'},
			h = {':Gitsigns stage_hunk<CR>', 'hunk'},
		},
		T = {
			name = "+toggle",

			a = {':Gitsigns toggle_linehl<CR>', 'added'},
			b = {':Gitsigns toggle_current_line_blame<CR>', 'blame'},
			d = {':Gitsigns toggle_deleted<CR>', 'deleted'},
			n = {':Gitsigns toggle_numhl<CR>', 'numbers'},
			w = {':Gitsigns toggle_word_diff<CR>', 'word_diff'},
		},

		t = {
			name = "+telescope",
			b = {":Telescope git_branches<CR>", 'branches'},
			c = {":Telescope git_bcommits<CR>", 'bcommits'},
			C = {":Telescope git_commits<CR>", 'commits'},
			f = {":Telescope git_files<CR>", 'files'},
			h = {":Telescope git_stash<CR>", 'stash'},
			s = {":Telescope git_status<CR>", 'status'},
		},

	},

	i = {
		name = "+ipython",

		d = {tmux_send('dea'), 'dea'},
		e = {tmux_send('exit'), 'exit'},
		f = {tmux_send('run %:p'), 'file'},
        l = {':norm ^"+y$<CR>:TmuxPaste<CR>',          'send line'},
        m = {[[:norm mm<CR>:norm "+ym<CR>:lua tmux_send('\\%paste', 'vim_cmd')<CR>:norm 'm<CR>]],           'matlab'},
		o = {tmux_send('ipython --no-autoindent'), 'open'},
		O = {tmux_send('powershell.exe -NoExit -Command "& \'C:\\\\Users\\\\al.elhag\\\\venv_auregen_windows\\\\Scripts\\\\Activate.ps1\'; py -m IPython --no-autoindent"'), 'open powershell'},
		O = {tmux_send('cmd.exe /c "cd /d C:\\Users\\al.elhag\\OneDrive - Qualus Corp\\Documents\\Python\\AuReGen && venv_auregen_windows\\Scripts\\activate.bat && ipython --no-autoindent && cmd"'), 'open cmd'},
        p = {':TmuxPaste<CR>',    'paste'},
		P = {'"+y:TmuxPaste<CR>', 'visual', mode='v'},
        r = {tmux_send('reset -f'), 'reset'},
        s = {tmux_send('sop'), 'sop'},
		v = {'0yt=:TmuxPaste<CR>', 'variable'},
	},
			
	l = {
		name = "+lsp",
		a = {'<cmd>lua vim.lsp.buf.code_action()<CR>', 'code action', silent = true},
		c = {
			name ="+config",

			i = {':LspInfo<CR>', 'info'},
			l = {':LspLog<CR>', 'log'},
			o = {':verbose set omnifunc?<CR>', 'omnifunc'},
			p = {':LspStop <CR>', 'stop'},
			r = {':LspRestart <CR>', 'restart'},
			s = {':LspStart <CR>', 'start'},
		},
		d = {'<cmd>lua vim.lsp.buf.definition()<CR>', 'definition', silent = true},
		f = {'<cmd>lua vim.lsp.buf.format()<CR>', 'format'},
		h = {'<cmd>lua vim.lsp.buf.hover()<CR>', 'hover', silent = true},
		I = {'<cmd>lua vim.lsp.buf.implementation()<CR>', 'implementation', silent = true},
		m = {
			name = "+mason",
			l = {':MasonLog<CR>', 'Log'},
			m = {':Mason<CR>', 'Mason'},
			u = {':MasonUpdate<CR>', 'Update'},
			U = {':MasonUninstallAll<CR>', 'Uninstall All'},
		},
		n = {'<cmd>lua vim.diagnostic.goto_next()<CR>', 'next', silent = true},
		o = {'<cmd>lua vim.diagnostic.open_float()<CR>', 'open_float', silent = true},
		p = {'<cmd>lua vim.diagnostic.goto_prev()<CR>', 'prev', silent = true},
		r = {'<cmd>lua vim.lsp.buf.rename()<CR>', 'rename'},
		s = {'<cmd>lua vim.lsp.buf.document_symbol()<CR>', 'symbol'},
		T = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', 'type definition', silent = true},
		t = {
			name = "+telescope",
			c = {
				name = "calls",
				i = {":Telescope lsp_incoming_calls<CR>", 'incoming'},
				o = {":Telescope lsp_outgoing_calls<CR>", 'outgoing'},
			},
			d = {":Telescope lsp_definitions<CR>", 'definitions'},
			D = {":Telescope diagnostics<CR>", 'diagnostics'},
			i = {":Telescope lsp_implementations<CR>", 'implementations'},
			r = {":Telescope lsp_references<CR>", 'references'},
			t = {":Telescope lsp_type_definitions<CR>", 'type'},
			s = {
				name = "symobls",

				d = {":Telescope lsp_document_symbols<CR>", 'document'},
				w = {":Telescope lsp_workspace_symbols<CR>", 'workspace'},
				W = {":Telescope lsp_dynamic_workspace_symbols<CR>", 'dynamic'},
			},
	    },

		v = {'<cmd>lua vim.lsp.buf.declaration()<CR>', 'declaration', silent = true},
		R = {'<cmd>lua vim.lsp.buf.references()<CR>', 'references'},
	},

	n = {
		name = "+neovim",



		o = {
			name = "+open",

			i = {':tabnew<CR>:e ~/.config/nvim/init.lua<CR>',  'init'},
			m = {':tabnew<CR>:e ~/.config/nvim/lua/lsp/mason/init.lua<CR>',  'init'},
			p = {':tabnew<CR>:e ~/.config/nvim/lua/core/plugins.lua<CR>',  'plugins'},
			w = {':tabnew<CR>:e ~/.config/nvim/lua/config/whichkey/keys/init.lua<CR>',  'whichkey'},
			W = {':luafile ~/dotfiles/nvim/lua/config/whichkey/keys/init.lua<CR>',  'whichkey source'},
		},

		a = {':set nrformats+=alpha<CR>', 'alpha+'},
		A = {':set nrformats-=alpha<CR>', 'alpha-'},
		e = {':echo expand(\'%:p:h\')<CR>)', 'echo'},
		l = {':w<CR>:luafile %<CR>',  'lua source'},
		L = {':Lazy<CR>', 'lazy'},
		v = {':w<CR>:source %<CR>',  'vim source'},
	},

	s = {
		name = "+telescope",

		b = {":Telescope builtin<CR>", 'builtin'},
		c = {":Telescope commands<CR>", "commands"},
		f = {
			name = "+files",

			b = {":Telescope current_buffer_fuzzy_find<CR>", "buffer"},
			f = {":Telescope find_files<CR>", 'find files'},
			g = {":Telescope live_grep<CR>", 'live_grep'},
			t = {":Telescope treesitter<CR>", 'treesitter'},
		},
		h = {":Telescope command_history<CR>", 'history'},
		r = {":Telescope resume<CR>", 'resume'},
		s = {":Telescope search_history<CR>", 'search_history'},
	},


	t = {
		name = "+tmux",

		c = {':TmuxSendClear<CR>', 'clear'},
		C = {tmux_send('C-c'), 'C-c'},
		d = {tmux_send('C-d'), 'C-d'},
		e = {tmux_send(''), 'enter'},
		k = {':silent !tmux kill-pane -t 1<CR>', 'kill'},
		l  = {tmux_open_pane('-dh'),  'right'},
		L  = {':silent !tmux move-pane -f -s 1 -t 0<CR>',  'right'},
		j  = {tmux_open_pane('-d'),  'down'},
		J  = {':silent !tmux move-pane -h -s 1 -t 0<CR>',  'down'},
		y = {tmux_send('y'), 'y'},
	},

	x = {
		name = "+latex",

		c = {':VimtexCompile<CR>', 'compile'},
		d = {':VimtexDocPackage<CR>', 'docs'},
		e = {':VimtexErrors<CR>', 'errors'},
		f =	{':VimtexTocOpen<CR>', 'file manager'},
		i = {':VimtexInfo<CR>', 'info'},
		l = {':VimtexClean<CR>', 'clean'},
		r = {':VimtexReload<CR>', 'reload'},
		s = {':VimtexStop<CR>', 'stop'},
		w = {':VimtexCountWords<CR>', 'words'},
		z = {':VimtexView<CR>', 'zathura'},
	},

	u = {
		name = "+undotree",

		f = {':UndotreeFocus<CR>', 'focus'},
		h = {':UndotreeHide<CR>', 'hide'},
		s = {':UndotreeShow<CR>', 'show'},
		t = {':UndotreeToggle<CR>', 'toggle'},
	},

	q = {':cclose<CR>', 'quit quickfix'},

}

wk_settings.register(wk_mappings, wk_opts)
