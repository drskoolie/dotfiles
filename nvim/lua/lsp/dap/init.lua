require("mason").setup()
require("mason-nvim-dap").setup({
	ensure_installed = {"cppdbg"},
	automatic_installation = true,
	automatic_setup = true,
})

require ("lsp/dap/settings/cpptools")
