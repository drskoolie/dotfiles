require('lspconfig')['pyright'].setup{ }

vim.g.coq_settings = {
	keymap = {
		recommended = true,
		pre_select = false,
		manual_complete = '<c-space>',
		bigger_preview = '<c-k>',
		},

	auto_start = 'shut-up',
}

require "lsp_signature".setup({
	bind = true, -- This is mandatory, otherwise border config won't get registered.
	handler_opts = {
		border = "rounded"
	}
})
