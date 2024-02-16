local lspconfig = require('lspconfig')

lspconfig.pyright.setup{}
lspconfig.ruff_lsp.setup{
	cmd = {"ruff-lsp"},
	root_dir = lspconfig.util.root_pattern(".git", "setup.py", "pyproject.toml", ".ruff-lsp.toml", "."),
}
-- require'lspconfig'.ccls.setup{}
