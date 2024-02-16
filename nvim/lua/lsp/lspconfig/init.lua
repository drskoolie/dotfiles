local lspconfig = require('lspconfig')

vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()

        lspconfig.pyright.setup{}
		lspconfig.ruff_lsp.setup{
			cmd = {"ruff-lsp"},
			root_dir = lspconfig.util.root_pattern(".git", "setup.py", "pyproject.toml", ".ruff-lsp.toml", "."),
		}

		-- require'lspconfig'.ccls.setup{}
    end,
})
