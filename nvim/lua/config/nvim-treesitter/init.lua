-- nvim-treesitter config
local configs = require("nvim-treesitter.configs")

configs.setup({
  -- This is the normal way: declare what you want installed
  ensure_installed = {
    "bash",
    "beancount",
    "c",
    "cpp",
    "css",
    "html",
    "json",
    "lua",
    "regex",
    "rust",
    "python",
    "vim",
  },

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = { enable = true },
  indent = { enable = true },
})
