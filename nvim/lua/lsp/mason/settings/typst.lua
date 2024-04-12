local lspconfig = require('lspconfig')

lspconfig.typst_lsp.setup{
	settings = {
		exportPdf = "never" -- Choose onType, onSave or never.
	}
}

