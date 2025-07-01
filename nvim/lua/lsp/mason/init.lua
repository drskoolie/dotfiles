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

require("lsp/mason/settings/clangd")
require("lsp/mason/settings/svelte")
require("lsp/mason/settings/ruff")
require("lsp/mason/settings/typst")
require("lsp/mason/settings/python")
