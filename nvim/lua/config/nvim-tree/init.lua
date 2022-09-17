require("nvim-tree").setup({
    disable_netrw = true,
    hijack_netrw = true,
    hijack_unnamed_buffer_when_opening = true,
	hijack_cursor = true,
	view = {
		mappings = {
		  list = {
			-- { key = "h", action = "dir_up" },
			{ key = "<CR>", action = "edit_in_place"},
			{ key = "c", action = "cd"},
			{ key = "d", action = "trash"},
			{ key = "D", action = "remove"},
			{ key = "h", action = "close_node"},
			{ key = "H", action = "toggle_dotfiles"},
			{ key = "I", action = "toggle_git_ignored"},
			{ key = "l", action = "open"},
			{ key = "r", action = "rename"},
			{ key = "R", action = "refresh"},
			{ key = "o", action = "edit_in_place"},
			{ key = "u", action = "dir_up"},
			{ key = "?", action = "toggle_help"},
		  }
	  }
  }
})
