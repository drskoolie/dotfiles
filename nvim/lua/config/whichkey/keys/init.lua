vim.g.mapleader  = ' '

local wk = require("which-key")

wk.add(
  {
    { "<leader>a", group = "apps" },
    { "<leader>aa", group = "accounting" },
    { "<leader>aab", ":w|!bean-report % balances<CR>", desc = "balances" },
    { "<leader>aac", ":w|!bean-check %<CR>", desc = "check" },
    { "<leader>ab", group = "boxes" },
    { "<leader>ac", group = "colorizer" },
    { "<leader>aca", ":ColorizerAttachToBuffer<CR>", desc = "attach" },
    { "<leader>acd", ":ColorizerDetachFromBuffer<CR>", desc = "detach" },
    { "<leader>acp", "<cmd>PickColor<CR>", desc = "picker" },
    { "<leader>acr", ":ColorizerReloadAllBuffers<CR>", desc = "reload" },
    { "<leader>act", ":ColorizerToggle<CR>", desc = "toggle" },
    { "<leader>acx", ":XtermColorTable<CR>", desc = "xterm" },
    { "<leader>ag", group = "gams" },
    { "<leader>agM", ":w<CR>:!gams %:h/main.gms<CR>", desc = "main" },
    { "<leader>agm", ":w<CR>:silent !gams %:h/main.gms<CR>", desc = "main" },
    { "<leader>ago", ":w<CR>:!gams %:p:t:r.gms > %:p:t:r.out<CR>", desc = "out" },
    { "<leader>agr", ":w<CR>:!gams %:p:t:r.gms<CR>", desc = "run" },
    { "<leader>ags", ":w<CR>:silent !gams %:p:t:r.gms > %:p:t:r.out<CR>", desc = "silent" },
    { "<leader>agw", ":w<CR>:vsp %:p:t:r.lst<CR>G:sp %:p:t:r.out<CR>G", desc = "window" },
    { "<leader>al", ":Lazy<CR>", desc = "lazy" },
    { "<leader>am", group = "markdown" },
    { "<leader>amp", ":MarkdownPreview<CR>", desc = "preview" },
    { "<leader>amq", ":MarkdownPreviewStop<CR>", desc = "quit" },
    { "<leader>at", ":Neotree<CR>", desc = "neotree" },
    { "<leader>au", group = "undotree" },
    { "<leader>auf", ":UndotreeFocus<CR>", desc = "focus" },
    { "<leader>auh", ":UndotreeHide<CR>", desc = "hide" },
    { "<leader>aus", ":UndotreeShow<CR>", desc = "show" },
    { "<leader>aut", ":UndotreeToggle<CR>", desc = "toggle" },
    { "<leader>b", group = "buffers" },
    { "<leader>bM", ":tabm -1<CR>", desc = "tab mov -1" },
    { "<leader>bc", ":cd %:p:h<CR>", desc = "cd" },
    { "<leader>bm", ":tabm +1<CR>", desc = "tab mov +1" },
    { "<leader>bn", ":bn<CR>", desc = "next" },
    { "<leader>bp", ":bp<CR>", desc = "prev" },
    { "<leader>bt", ":tabnew<CR>", desc = "tab new" },
    { "<leader>c", group = "cargo" },
    { "<leader>cB", ":lua zellij_send_chars('cargo build --release')<CR>", desc = "build --release" },
    { "<leader>cb", ":lua zellij_send_chars('cargo build')<CR>", desc = "build" },
    { "<leader>cc", ":lua zellij_send_chars('cargo check')<CR>", desc = "check" },
    { "<leader>cd", ":lua zellij_send_chars('cargo doc --open')<CR>", desc = "doc" },
    { "<leader>cr", ":lua zellij_send_chars('cargo run')<CR>", desc = "run" },
    { "<leader>d", group = "debug" },
    { "<leader>dI", ":lua set_trace_up()<CR>", desc = "ipdb_up" },
    { "<leader>dL", ":lua zellij_send_chars('l')<CR>", desc = "list" },
    { "<leader>dS", ":lua zellij_send_chars('sticky')<CR>", desc = "sticky" },
    { "<leader>dT", ":lua zellij_send_chars('pytest --pdb --pdbcls=IPython.terminal.debugger:TerminalPdb')<CR>", desc = "pytest ipdb" },
    { "<leader>db", ":lua zellij_send_chars('b')<CR>", desc = "break" },
    { "<leader>dc", ":lua zellij_send_chars('c')<CR>", desc = "continue" },
    { "<leader>dd", ":lua zellij_send_chars('d')<CR>", desc = "down" },
    { "<leader>dh", ":lua zellij_send_chars('h')<CR>", desc = "help" },
    { "<leader>di", ":lua set_trace()<CR>", desc = "ipdb" },
    { "<leader>dl", ":lua zellij_send_chars('ll')<CR>", desc = "longlist" },
    { "<leader>dn", ":lua zellij_send_chars('n')<CR>", desc = "next" },
    { "<leader>dp", ":lua zellij_send_chars('\\\\%debug')<CR>", desc = "%debug" },
    { "<leader>dq", ":lua zellij_send_chars('q')<CR>", desc = "quit" },
    { "<leader>ds", ":lua zellij_send_chars('s')<CR>", desc = "step" },
    { "<leader>dt", ":lua zellij_send_chars('pytest')<CR>", desc = "pytest" },
    { "<leader>du", ":lua zellij_send_chars('u')<CR>", desc = "up" },
    { "<leader>dw", ":lua zellij_send_chars('w')<CR>", desc = "where" },
    { "<leader>f", group = "fzf" },
    { "<leader>fB", ":FzfLua buffers<CR>", desc = "buffers" },
    { "<leader>fG", ":FzfLua grep<CR>", desc = "grep" },
    { "<leader>fb", ":FzfLua blines<CR>", desc = "blines" },
    { "<leader>ff", ":FzfLua files<CR>", desc = "files" },
    { "<leader>fg", ":FzfLua git_files<CR>", desc = "git" },
    { "<leader>fh", ":FzfLua helptags<CR>", desc = "helptags" },
    { "<leader>fs", ":FzfLua lsp_document_symbols<CR>", desc = "symbols" },
    { "<leader>g", group = "git" },
    { "<leader>gB", ":Gitsigns blame_line<CR>", desc = "blame" },
    { "<leader>gR", ":Gitsigns refresh<CR>", desc = "refresh" },
    { "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", desc = "blame" },
    { "<leader>gd", ":Gitsigns toggle_deleted<CR>", desc = "deleted" },
    { "<leader>gg", ":Neogit<CR>", desc = "neogit" },
    { "<leader>gh", ":Gitsigns preview_hunk<CR>", desc = "hunk" },
    { "<leader>gl", ":Gitsigns toggle_linehl<CR>", desc = "line" },
    { "<leader>gn", ":Gitsigns next_hunk<CR>", desc = "next hunk" },
    { "<leader>gp", ":Gitsigns prev_hunk<CR>", desc = "prev hunk" },
    { "<leader>gq", ":Gitsigns setqflist<CR>", desc = "quickfix" },
    { "<leader>gr", ":Gitsigns reset_hunk<CR>", desc = "reset hunk" },
    { "<leader>i", group = "ipython" },
    { "<leader>iO", ":lua zellij_send_chars('powershell.exe -NoExit -Command \\\\\"cd \\'C:\\\\Users\\\\al.elhag\\\\OneDrive - Qualus Corp\\\\Documents\\\\Python\\\\AuReGen\\'; .\\\\venv_auregen_windows\\\\Scripts\\\\Activate.ps1; py -m IPython --no-autoindent \\\\\"')<CR>", desc = "open powershell" },
    { "<leader>iV", "^yt=o<ESC>pxa", desc = "variable" },
    { "<leader>ia", ":lua zellij_send_chars(\"quit\")<CR>:lua zellij_send_chars(\"ipython --no-autoindent\")<CR>:lua zellij_send_ascii(12)<CR>:lua zellij_send_chars(\"run '%:p'\")<CR>", desc = "all" },
    { "<leader>id", ':lua zellij_send_chars("deactivate")<CR>', desc = "deactivate" },
    { "<leader>ie", ':lua zellij_send_chars("exit")<CR>', desc = "exit" },
    { "<leader>if", ":lua zellij_send_chars(\"run '%:p'\")<CR>", desc = "file" },
    { "<leader>il", ':norm ^"+y$<CR>:lua zellij_paste()<CR>', desc = "send line" },
    { "<leader>io", ':lua zellij_send_chars("ipython --no-autoindent")<CR>', desc = "open" },
    { "<leader>iq", ':lua zellij_send_chars("quit")<CR>', desc = "quit" },
    { "<leader>ir", ':lua zellij_send_chars("reset -f")<CR>', desc = "reset" },
    { "<leader>is", ':lua zellij_send_chars("sop")<CR>', desc = "sop" },
    { "<leader>iv", "^yt=:lua zellij_paste()<CR>", desc = "variable" },
    { "<leader>l", group = "lsp" },
    { "<leader>lD", ":Telescope diagnostics<CR>", desc = "diagnostics" },
    { "<leader>lR", "<cmd>lua vim.lsp.buf.references()<CR>", desc = "references" },
    { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<CR>", desc = "code action" },
    { "<leader>lc", group = "config" },
    { "<leader>lcM", ":MasonLog<CR>", desc = "mason log" },
    { "<leader>lci", ":LspInfo<CR>", desc = "info" },
    { "<leader>lcl", ":LspLog<CR>", desc = "log" },
    { "<leader>lcm", ":Mason<CR>", desc = "mason" },
    { "<leader>lcq", ":LspStop <CR>", desc = "lsp stop" },
    { "<leader>lcr", ":LspRestart <CR>", desc = "restart" },
    { "<leader>lcs", ":LspStart <CR>", desc = "start" },
    { "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<CR>", desc = "definition" },
    { "<leader>lf", "<cmd>lua vim.lsp.buf.format()<CR>", desc = "format" },
    { "<leader>lh", "<cmd>lua vim.lsp.buf.hover()<CR>", desc = "hover" },
    { "<leader>li", "<cmd>lua vim.lsp.buf.implementation()<CR>", desc = "implementation" },
    { "<leader>ln", "<cmd>lua vim.diagnostic.goto_next()<CR>", desc = "next" },
    { "<leader>lo", "<cmd>lua vim.diagnostic.open_float()<CR>", desc = "open_float" },
    { "<leader>lp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", desc = "prev" },
    { "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<CR>", desc = "rename" },
    { "<leader>ls", ":Telescope lsp_document_symbols<CR>", desc = "document" },
    { "<leader>lt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", desc = "type definition" },
    { "<leader>lv", "<cmd>lua vim.lsp.buf.declaration()<CR>", desc = "declaration" },
    { "<leader>n", group = "neovim" },
    { "<leader>nA", ":set nrformats-=alpha<CR>", desc = "alpha-" },
    { "<leader>na", ":set nrformats+=alpha<CR>", desc = "alpha+" },
    { "<leader>ne", ":echo expand('%:p:h')<CR>)", desc = "echo" },
    { "<leader>nl", ":w<CR>:luafile %<CR>", desc = "lua source" },
    { "<leader>no", group = "open" },
    { "<leader>noW", ":luafile ~/dotfiles/nvim/lua/config/whichkey/keys/init.lua<CR>", desc = "whichkey source" },
    { "<leader>noi", ":tabnew<CR>:e ~/.config/nvim/init.lua<CR>", desc = "init" },
    { "<leader>nom", ":tabnew<CR>:e ~/.config/nvim/lua/lsp/mason/init.lua<CR>", desc = "init" },
    { "<leader>nop", ":tabnew<CR>:e ~/.config/nvim/lua/core/plugins.lua<CR>", desc = "plugins" },
    { "<leader>now", ":tabnew<CR>:e ~/.config/nvim/lua/config/whichkey/keys/init.lua<CR>", desc = "whichkey" },
    { "<leader>ns", ":set spell!<CR>", desc = "spell toggle" },
    { "<leader>nv", ":w<CR>:source %<CR>", desc = "vim source" },
    { "<leader>p", group = "dap" },
    { "<leader>pB", '<cmd> lua require("dap").clear_breakpoint()<CR>', desc = "clear" },
    { "<leader>pU", '<cmd> lua require("dapui").open({reset = true})<CR>', desc = "ui reset" },
    { "<leader>pb", '<cmd> lua require("dap").toggle_breakpoint()<CR>', desc = "breakpoint" },
    { "<leader>pc", '<cmd> lua require("dap").continue()<CR>', desc = "continue" },
    { "<leader>pf", group = "frame" },
    { "<leader>pfd", '<cmd> lua require("dap").down()<CR>', desc = "down" },
    { "<leader>pff", '<cmd> lua require("dap").focus_frame()<CR>', desc = "focus" },
    { "<leader>pfr", '<cmd> lua require("dap").restart_frame()<CR>', desc = "restart" },
    { "<leader>pfu", '<cmd> lua require("dap").up()<CR>', desc = "up" },
    { "<leader>pg", '<cmd> lua require("dap").goto_()<CR>', desc = "goto" },
    { "<leader>po", desc = "+open" },
    { "<leader>pob", "<cmd> lua require('lsp/dap/focus_buffer').focus_buffer('DAP Breakpoints')<CR>", desc = "breakpoints" },
    { "<leader>pof", "<cmd> lua require('lsp/dap/focus_buffer').focus_buffer('DAP Stacks')<CR>", desc = "frame" },
    { "<leader>poh", "<cmd> lua require('lsp/dap/focus_buffer').focus_buffer('DAP Hover')<CR>", desc = "hover" },
    { "<leader>poo", "<cmd> lua require('lsp/dap/focus_buffer').focus_buffer_file()<CR>", desc = "og" },
    { "<leader>por", "<cmd> lua require('lsp/dap/focus_buffer').focus_buffer('[dap-repl]')<CR>", desc = "repl" },
    { "<leader>pos", "<cmd> lua require('lsp/dap/focus_buffer').focus_buffer('DAP Scopes')<CR>", desc = "scopes" },
    { "<leader>pot", "<cmd> lua require('lsp/dap/focus_buffer').focus_buffer('[dap-terminal]')<CR>", desc = "terminal" },
    { "<leader>pow", "<cmd> lua require('lsp/dap/focus_buffer').focus_buffer('DAP Watches')<CR>", desc = "watches" },
    { "<leader>pr", '<cmd> lua require("dap").restart()<CR>', desc = "restart" },
    { "<leader>ps", group = "step" },
    { "<leader>psb", '<cmd> lua require("dap").step_back()<CR>', desc = "back" },
    { "<leader>psc", '<cmd> lua require("dap").run_to_cursor()<CR>', desc = "run to cursor" },
    { "<leader>psi", '<cmd> lua require("dap").step_into()<CR>', desc = "into" },
    { "<leader>pso", '<cmd> lua require("dap").step_out()<CR>', desc = "out" },
    { "<leader>psv", '<cmd> lua require("dap").step_over()<CR>', desc = "over" },
    { "<leader>pt", '<cmd> lua require("dap").terminate()<CR>', desc = "terminate" },
    { "<leader>pu", '<cmd> lua require("dapui").toggle()<CR>', desc = "ui" },
    { "<leader>r", group = "rust" },
    { "<leader>ra", ":RustLsp codeAction<CR>", desc = "action" },
    { "<leader>rd", ":RustLsp moveItem down<CR>", desc = "move down" },
    { "<leader>re", ":RustLsp expandMacro<CR>", desc = "expand macro" },
    { "<leader>rj", ":RustLsp joinLines<CR>", desc = "join lines" },
    { "<leader>ro", desc = "+open" },
    { "<leader>roc", ":RustLsp openCargo<CR>", desc = "cargo" },
    { "<leader>rod", ":RustLsp openDocs<CR>", desc = "docs" },
    { "<leader>rop", ":RustLsp parentModule<CR>", desc = "parent" },
    { "<leader>rr", ":RustLsp hover range<CR>", desc = "hover range" },
    { "<leader>ru", ":RustLsp moveItem up<CR>", desc = "move up" },
    { "<leader>z", group = "zellij" },
    { "<leader>zD", ':lua zellij_send_action("zellij action new-pane -d down; ")<CR>', desc = "down" },
    { "<leader>zc", ":lua zellij_send_ascii(3)<CR>", desc = "C-c" },
    { "<leader>zd", ":lua zellij_send_ascii(4)<CR>", desc = "C-d" },
    { "<leader>ze", ":lua zellij_send_ascii(13)<CR>", desc = "<CR>" },
    { "<leader>zl", ":lua zellij_send_ascii(12)<CR>", desc = "C-l" },
    { "<leader>zp", ":lua zellij_paste()<CR>", desc = "paste" },
    { "<leader>zr", ':lua zellij_send_action("zellij action new-pane -d right; ")<CR>', desc = "right" },
    { "<leader>zx", ':lua zellij_send_action("zellij action close-pane; ")<CR>', desc = "kill" },
    { "<leader>zy", ":lua zellij_send_ascii(121)<CR>", desc = "y" },
    {
      mode = { "v" },
      { "<leader>abb", "!boxes -a hcvc -d ", desc = "boxes" },
      { "<leader>abc", "!boxes -a hcvc -d columns<CR>", desc = "columns" },
      { "<leader>abd", "!boxes -a hcvc -d dog<CR>", desc = "dog" },
      { "<leader>abg", "!boxes -a hcvc -d girl<CR>", desc = "girl" },
      { "<leader>abi", "!boxes -a hcvc -d ian jones<CR>", desc = "ian jones" },
      { "<leader>abm", "!boxes -a hcvc -d mouse<CR>", desc = "mouse" },
      { "<leader>abn", "!boxes -a hcvc -d spring<CR>", desc = "spring" },
      { "<leader>abp", "!boxes -a hlvt -d parchment<CR>", desc = "parchment" },
      { "<leader>abs", "!boxes -a hcvc -d stone<CR>", desc = "stone" },
      { "<leader>abu", "!boxes -a hcvc -d unicornsay<CR>", desc = "unicornsay" },
      { "<leader>abv", "!boxes -a hcvc -d unicornthink<CR>", desc = "unicornthink" },
      { "<leader>aby", "!boxes -a hcvc -d boy<CR>", desc = "boy" },
      { "<leader>ip", '"+y:lua zellij_paste<CR>', desc = "visual" },
    },
  }
  )
