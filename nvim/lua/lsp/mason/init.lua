require("mason").setup()

require("mason-lspconfig").setup {
	PATH = "prepend",
	ensure_installed = {
		"clangd",
		"pyright",
		"ruff",
		"tinymist",
	},
}

require("lsp/mason/settings/clangd")
require("lsp/mason/settings/typst")
require("lsp/mason/settings/python")
