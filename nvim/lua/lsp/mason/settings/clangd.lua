local lspconfig = require('lspconfig')

lspconfig.clangd.setup{
    cmd = {"clangd", "--background-index", "--clang-tidy"},
    filetypes = {"c", "cpp", "objc", "objcpp"},  -- Enable clangd for C, C++, Objective-C, and Objective-C++
    root_dir = function(fname)
        -- Use the utility to search for the compilation database first, then fallback to the directory of the file.
        return require('lspconfig').util.root_pattern("compile_commands.json", ".git", "make.py")(fname) or
               require('lspconfig').util.path.dirname(fname)
    end,
    -- Customize the behavior when an LSP connection is initiated.
    on_attach = function(client, bufnr)
        -- Enable completion triggered by <c-x><c-o>
        vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    end,
    -- Additional settings can be set here such as for diagnostics and language specific settings.
    settings = {
        clangd = {
            -- Example: includeInlayHints is a language-specific setting
            includeInlayHints = true
        }
    }
}
