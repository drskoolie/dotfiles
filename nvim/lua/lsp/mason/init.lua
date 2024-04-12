require("mason").setup()

require("mason-lspconfig").setup {
	PATH = "prepend",
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

require("lsp/mason/settings/python")
require("lsp/mason/settings/typst")

