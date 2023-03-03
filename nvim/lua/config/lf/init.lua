require("lf").setup({
  default_cmd = "~/dotfiles/lf/lf_bin", -- default `lf` command
  default_action = "edit", -- default action when `Lf` opens a file
  default_actions = { -- default action keybindings
    ["<C-t>"] = "tabedit",
    ["<C-x>"] = "split",
    ["<C-v>"] = "vsplit",
    ["e"] = "edit",
  },

  winblend = 10, -- psuedotransparency level
  dir = "", -- directory where `lf` starts ('gwd' is git-working-directory, "" is CWD)
  direction = "float", -- window type: float horizontal vertical
  border = "double", -- border kind: single double shadow curved
  height = 0.80, -- height of the *floating* window
  width = 0.85, -- width of the *floating* window
  escape_quit = true, -- map escape to the quit command (so it doesn't go into a meta normal mode)
  focus_on_open = false, -- focus the current file when opening Lf (experimental)
  mappings = true, -- whether terminal buffer mapping is enabled
  tmux = false, -- tmux statusline can be disabled on opening of Lf

  -- Layout configurations
  layout_mapping = "<C-u>", -- resize window with this key

  views = { -- window dimensions to rotate through
    { width = 0.600, height = 0.600 },
    { width = 0.800, height = 0.800 },
    { width = 0.950, height = 0.950 },
  }
})

-- vim.api.nvim_set_keymap("n", "<mapping>", "<cmd>lua require('lf').start()<CR>", { noremap = true })
