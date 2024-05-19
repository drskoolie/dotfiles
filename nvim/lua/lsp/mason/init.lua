require("mason").setup()

require("mason-lspconfig").setup {
	PATH = "prepend",
	ensure_installed = {
		"clangd",
		"pyright",
		"ruff_lsp",
	},
}

require("lsp/mason/settings/python")
require("lsp/mason/settings/clangd")
-- require("lsp/mason/settings/typst")
