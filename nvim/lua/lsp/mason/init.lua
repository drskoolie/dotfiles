require("mason").setup()

require("mason-lspconfig").setup {
	PATH = "prepend",
	automatic_installation = false,
	ensure_installed = {
		"basedpyright",
		"clangd",
		"ruff",
		"tinymist",
	},
}

-- require("lsp/mason/settings/basedpyright")
-- require("lsp/mason/settings/clangd")
-- require("lsp/mason/settings/typst")
-- require("lsp/mason/settings/pyright")
-- require("lsp/mason/settings/ruff")


local bp = require("lsp/mason/settings/basedpyright")
-- local cd = require("lsp/mason/settings/clangd")
-- local tm = require("lsp/mason/settings/typst")

-- Register them as enabled configurations
vim.lsp.config("basedpyright", bp)
-- vim.lsp.config("clangd", cd)
-- vim.lsp.config("tinymist", tm)

-- Enable them
vim.lsp.enable({"basedpyright"})
-- vim.lsp.enable({"tinymist"})
