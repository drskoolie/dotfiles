local lspconfig = require('lspconfig')
require'lspconfig'.pyright.setup{}
require'lspconfig'.ccls.setup{}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false
    }
)

vim.cmd([[
autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc
autocmd Filetype c setlocal omnifunc=v:lua.vim.lsp.omnifunc
]])

-- set omnifunc=v:lua.vim.lsp.omnifunc
