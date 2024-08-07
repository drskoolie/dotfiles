wk_mappings = {

	a = {
		name = "+apps",

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
		 
		g = {
			name = "+gams",

			m = {':w<CR>:silent !gams %:h/main.gms<CR>', 'main'},
			M = {':w<CR>:!gams %:h/main.gms<CR>', 'main'},
			o = {':w<CR>:!gams %:p:t:r.gms > %:p:t:r.out<CR>', 'out'},
			r = {':w<CR>:!gams %:p:t:r.gms<CR>', 'run'},
			s = {':w<CR>:silent !gams %:p:t:r.gms > %:p:t:r.out<CR>', 'silent'},
			w = {':w<CR>:vsp %:p:t:r.lst<CR>G:sp %:p:t:r.out<CR>G', 'window'},
		},

		l = {':Lazy<CR>', 'lazy'},

		m = {
			name = "+markdown",

			p = {':MarkdownPreview<CR>', 'preview'},
			q = {':MarkdownPreviewStop<CR>', 'quit'},
		},

		t = {':Neotree<CR>', 'neotree'},
		u = {
			name = "+undotree",

			f = {':UndotreeFocus<CR>', 'focus'},
			h = {':UndotreeHide<CR>', 'hide'},
			s = {':UndotreeShow<CR>', 'show'},
			t = {':UndotreeToggle<CR>', 'toggle'},
		},
	},

	b = {
		name = "+buffers",

		c = {':cd %:p:h<CR>', 'cd'},
		m = {':tabm +1<CR>',    'tab mov +1'},
		M = {':tabm -1<CR>',    'tab mov -1'},
		n = {':bn<CR>', 'next'},
		p = {':bp<CR>', 'prev'},
		t  = {':tabnew<CR>',    'tab new'},
	},
	
	c = {
		name = "+cargo",
		b = {":lua zellij_send_chars('cargo build')<CR>", 'build'},
		B = {":lua zellij_send_chars('cargo build --release')<CR>", 'build --release'},
		c = {":lua zellij_send_chars('cargo check')<CR>", 'check'},
		d = {":lua zellij_send_chars('cargo doc --open')<CR>", 'doc'},
		r = {":lua zellij_send_chars('cargo run')<CR>", 'run'},
	},

	d = {
		name = "+debug",
		b = {":lua zellij_send_chars('b')<CR>", 'break'},
		c = {":lua zellij_send_chars('c')<CR>", 'continue'},
		d = {":lua zellij_send_chars('d')<CR>", 'down'},
		h = {":lua zellij_send_chars('h')<CR>", 'help'},
		l = {":lua zellij_send_chars('ll')<CR>", 'longlist'},
		L = {":lua zellij_send_chars('l')<CR>", 'list'},
		i = {':lua set_trace()<CR>', 'ipdb'},
		I = {':lua set_trace_up()<CR>', 'ipdb_up'},
		n = {":lua zellij_send_chars('n')<CR>", 'next'},
		q = {":lua zellij_send_chars('q')<CR>", 'quit'},
		p = {":lua zellij_send_chars('\\\\%debug')<CR>", '%debug'},
		s = {":lua zellij_send_chars('s')<CR>", 'step'},
		S = {":lua zellij_send_chars('sticky')<CR>", 'sticky'},
		t = {":lua zellij_send_chars('pytest')<CR>", 'pytest'},
		T = {":lua zellij_send_chars('pytest --pdb --pdbcls=IPython.terminal.debugger:TerminalPdb')<CR>", 'pytest ipdb'},
		u = {":lua zellij_send_chars('u')<CR>", 'up'},
		w = {":lua zellij_send_chars('w')<CR>", 'where'},
	},

	f = {
		name = "+fzf",

		b = {':FzfLua blines<CR>', 'blines'},
		B = {':FzfLua buffers<CR>', 'buffers'},
		f = {':FzfLua files<CR>', 'files'},
		g = {':FzfLua git_files<CR>', 'git'},
		G = {':FzfLua grep<CR>', 'grep'},
		h = {':FzfLua helptags<CR>', 'helptags'},
		s = {':FzfLua lsp_document_symbols<CR>', 'symbols'},
	},

	g = {
		name = "+git",

		b = {':Gitsigns toggle_current_line_blame<CR>', 'blame'},
		B = {':Gitsigns blame_line<CR>', 'blame'},
		d = {':Gitsigns toggle_deleted<CR>', 'deleted'},
		g = {':Neogit<CR>', 'neogit'},
		h = {':Gitsigns preview_hunk<CR>', 'hunk'},
		l = {':Gitsigns toggle_linehl<CR>', 'line'},
		n = {':Gitsigns next_hunk<CR>', 'next hunk'},
		p = {':Gitsigns prev_hunk<CR>', 'prev hunk'},
		r = {':Gitsigns reset_hunk<CR>', 'reset hunk'},
		R = {':Gitsigns refresh<CR>', 'refresh'},
		q = {':Gitsigns setqflist<CR>', 'quickfix'},
	},

	i = {
		name = "+ipython",

		a = {':lua zellij_send_chars("quit")<CR>:lua zellij_send_chars("ipython --no-autoindent")<CR>:lua zellij_send_ascii(12)<CR>:lua zellij_send_chars("run \'%:p\'")<CR>', 'all'},
		d = {':lua zellij_send_chars("deactivate")<CR>', 'deactivate'},
		e = {':lua zellij_send_chars("exit")<CR>', 'exit'},
		f = {':lua zellij_send_chars("run \'%:p\'")<CR>', 'file'},
		g = {':lua zellij_send_chars("gradio %:p")<CR>', 'gradio'},
		o = {':lua zellij_send_chars("ipython --no-autoindent")<CR>', 'open'},
		-- O = {[[:lua zellij_send_chars('cmd.exe /K \\"cd /d C:\\\\Users\\\\al.elhag\\\\OneDrive - Qualus Corp\\\\Documents\\\\Python\\\\AuReGen && venv_auregen_windows\\\\Scripts\\\\activate.bat && ipython --no-autoindent\\"')]], 'open cmd'},
		O = {[[:lua zellij_send_chars('powershell.exe -NoExit -Command \\"cd \'C:\\Users\\al.elhag\\OneDrive - Qualus Corp\\Documents\\Python\\AuReGen\'; .\\venv_auregen_windows\\Scripts\\Activate.ps1; py -m IPython --no-autoindent \\"')<CR>]], 'open powershell'},
		q = {':lua zellij_send_chars("quit")<CR>', 'quit'},
		r = {':lua zellij_send_chars("reset -f")<CR>', 'reset'},
        l = {':norm ^"+y$<CR>:lua zellij_paste()<CR>', 'send line'},
        p = {':lua zellij_send_chars("\\\\%paste")<CR>', 'paste'},
		p = {'"+y:lua zellij_paste<CR>', 'visual', mode='v'},
        s = {':lua zellij_send_chars("sop")<CR>', 'sop'},
		v = {'^yt=:lua zellij_paste()<CR>', 'variable'},
		V = {'^yt=o<ESC>pxa', 'variable'},

        -- m = {[[:norm mm<CR>:norm "+ym<CR>:lua tmux_send('\\%paste', 'vim_cmd')<CR>:norm 'm<CR>]],           'matlab'},
	},
			
	l = {
		name = "+lsp",
		a = {'<cmd>lua vim.lsp.buf.code_action()<CR>', 'code action', silent = true},
		c = {
			name ="+config",

			i = {':LspInfo<CR>', 'info'},
			l = {':LspLog<CR>', 'log'},
			m = {':Mason<CR>', 'mason'},
			M = {':MasonLog<CR>', 'mason log'},
			q = {':LspStop <CR>', 'lsp stop'},
			r = {':LspRestart <CR>', 'restart'},
			s = {':LspStart <CR>', 'start'},
		},
		d = {'<cmd>lua vim.lsp.buf.definition()<CR>', 'definition', silent = true},
		D = {":Telescope diagnostics<CR>", 'diagnostics'},
		f = {'<cmd>lua vim.lsp.buf.format()<CR>', 'format'},
		h = {'<cmd>lua vim.lsp.buf.hover()<CR>', 'hover', silent = true},
		i = {'<cmd>lua vim.lsp.buf.implementation()<CR>', 'implementation', silent = true},
		n = {'<cmd>lua vim.diagnostic.goto_next()<CR>', 'next', silent = true},
		o = {'<cmd>lua vim.diagnostic.open_float()<CR>', 'open_float', silent = true},
		p = {'<cmd>lua vim.diagnostic.goto_prev()<CR>', 'prev', silent = true},
		r = {'<cmd>lua vim.lsp.buf.rename()<CR>', 'rename'},
		s = {":Telescope lsp_document_symbols<CR>", 'document'},
		t = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', 'type definition', silent = true},
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
		s = {':set spell!<CR>', 'spell toggle'},
		v = {':w<CR>:source %<CR>',  'vim source'},
	},

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

	r = {
		name = "+rust",

		a = {":RustLsp codeAction<CR>", "action"},
		d = {":RustLsp moveItem down<CR>", "move down"},
		e = {":RustLsp expandMacro<CR>", "expand macro"},
		j = {":RustLsp joinLines<CR>", "join lines"},
		o = {
			"+open",

			c = {":RustLsp openCargo<CR>", "cargo"},
			d = {":RustLsp openDocs<CR>", "docs"},
			p = {":RustLsp parentModule<CR>", "parent"},
		},
		r = {":RustLsp hover range<CR>", "hover range"},
		u = {":RustLsp moveItem up<CR>", "move up"},
	},


	z = {
		name = "+zellij",

		c = {":lua zellij_send_ascii(3)<CR>", 'C-c'},
		d = {":lua zellij_send_ascii(4)<CR>", 'C-d'},
		e = {":lua zellij_send_ascii(13)<CR>", '<CR>'},
		l = {":lua zellij_send_ascii(12)<CR>", 'C-l'},
        p = {':lua zellij_paste()<CR>','paste'},
		r = {':lua zellij_send_action("zellij action new-pane -d right; ")<CR>', 'right'},
		D = {':lua zellij_send_action("zellij action new-pane -d down; ")<CR>', 'down'},
		y = {":lua zellij_send_ascii(121)<CR>", 'y'},
		x = {':lua zellij_send_action("zellij action close-pane; ")<CR>', 'kill'},
	},
}

wk_settings.register(wk_mappings, wk_opts)
