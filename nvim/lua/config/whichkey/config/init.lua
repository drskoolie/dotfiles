local wk = require("which-key")
wk.setup ({
  delay = function(ctx)
	  return 0
  end,
  -- preset = "helix",
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    spelling = {
      enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    presets = {
      operators = false, -- adds help for operators like d, y, ...
      motions = false, -- adds help for motions
      text_objects = false, -- help for text objects triggered after entering an operator
      windows = false, -- default bindings on <c-w>
      nav = false, -- misc bindings to work with windows
      z = false, -- bindings for folds, spelling and others prefixed with z
      g = false, -- bindings for prefixed with g
    },
  },
  win = {
    -- don't allow the popup to overlap with the cursor
    no_overlap = true,
    width = 80,
    height = { min = 4, max = 25 },
    col = 0, -- spacing of columns in the overall box
    -- row = math.huge, -- spacing of rows in the overall box
    -- border = "double",
    padding = { 1, 2 }, -- extra window padding [top/bottom, right/left]
    title = false,
    -- title_pos = "center",
    zindex = 1000,
    -- Additional vim.wo and vim.bo options
    bo = {},
    wo = {
      winblend = 5, -- value between 0-100 0 for fully opaque and 100 for fully transparent
    },
  },
  layout = {
	height = { min = 10, max = 20 },
    width = { min = 5, max = 40 }, -- min and max width of the columns
    spacing = 2, -- spacing between columns
	align = "center",
  },
  keys = {
    scroll_down = "<c-d>", -- binding to scroll down inside the popup
    scroll_up = "<c-u>", -- binding to scroll up inside the popup
  },
  -- show_help = true, -- show a help message in the command line for using WhichKey
  -- show_keys = true, -- show the currently pressed key and its label as a message in the command line
  -- disable WhichKey for certain buf types and file types.
  disable = {
    ft = {},
    bt = {},
  },
  debug = false, -- enable wk.log in the current directory
})

