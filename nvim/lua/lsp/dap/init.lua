require("mason").setup()
require("mason-nvim-dap").setup({
	ensure_installed = {
		"cppdbg",
		"python",
	},
	automatic_installation = true,
	automatic_setup = true,
})

require("dapui").setup()

require("lsp/dap/settings/cpptools")
require("lsp/dap/settings/python")
