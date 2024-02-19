require("mason").setup()
require("mason-lspconfig").setup()

require('lspconfig').pyright.setup{}
require('lspconfig').ruff_lsp.setup{
	cmd = {"ruff-lsp"},
	root_dir = lspconfig.util.root_pattern(".git", "setup.py", "pyproject.toml", ".ruff-lsp.toml", "."),
}
