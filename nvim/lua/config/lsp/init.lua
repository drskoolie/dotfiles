local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = false,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.setup()
