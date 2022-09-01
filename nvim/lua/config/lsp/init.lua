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
