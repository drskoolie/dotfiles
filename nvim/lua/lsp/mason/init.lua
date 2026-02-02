require("mason").setup()

require("mason-lspconfig").setup {
	PATH = "prepend",
	ensure_installed = {
		"basedpyright",
		"clangd",
		"ruff",
		"tinymist",
	},
}

require("lsp/mason/settings/basedpyright")
require("lsp/mason/settings/clangd")
require("lsp/mason/settings/typst")
-- require("lsp/mason/settings/pyright")
require("lsp/mason/settings/ruff")
