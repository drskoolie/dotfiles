local lspconfig = require("lspconfig")

lspconfig.ruff.setup({
  on_attach = function(_, _)
    -- No custom keymaps or additional configurations needed
  end,
  init_options = {
    settings = {
      -- Optional: Add command-line arguments if needed
      args = {}
    }
  }
})

