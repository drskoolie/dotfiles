require("mason").setup()

require("mason-lspconfig").setup {
	PATH = "prepend",
	ensure_installed = {
		"clangd",
		"pyright",
		"svelte",
		"ruff",
		"tinymist",
	},
}

-- local lspconfig = require('lspconfig')
-- 
-- local python_root_pattern = lspconfig.util.root_pattern(".git", "setup.py", "pyproject.toml", ".ruff-lsp.toml", ".")
-- 
-- lspconfig.ruff.setup{
-- 	cmd = {"ruff-lsp"},
-- 	root_dir = python_root_pattern,
-- }

require("lsp/mason/settings/clangd")
require("lsp/mason/settings/svelte")
require("lsp/mason/settings/ruff")
require("lsp/mason/settings/typst")
-- require("lsp/mason/settings/python")
-- require("lsp/mason/settings/rust_analyzer")
