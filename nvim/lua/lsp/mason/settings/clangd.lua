vim.lsp.config.clangd = {
    cmd = { "clangd", "--background-index", "--clang-tidy" },
    filetypes = { "c", "cpp", "objc", "objcpp" },

    root_dir = function(fname)
        local util = vim.lsp.util
        return util.root_pattern(
            "compile_commands.json",
            ".git",
            "make.py"
        )(fname) or util.path.dirname(fname)
    end,

    on_attach = function(client, bufnr)
        vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
    end,

    settings = {
        clangd = {
            includeInlayHints = true,
        },
    },
}

