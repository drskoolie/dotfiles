require("mason").setup()

require("mason-lspconfig").setup {
	ensure_installed = {
		"clangd",
		"cmake",
		"html",
		"jsonls",
		"pyright",
		"ruff_lsp",
		"vimls",
		"hydra_lsp",
		"typst_lsp",
	},
}

local lspconfig = require('lspconfig')
lspconfig.pyright.setup{}
lspconfig.ruff_lsp.setup{
	cmd = {"ruff-lsp"},
	root_dir = lspconfig.util.root_pattern(".git", "setup.py", "pyproject.toml", ".ruff-lsp.toml", "."),
}
lspconfig.typst_lsp.setup{
	settings = {
		exportPdf = "never" -- Choose onType, onSave or never.
	}
}
