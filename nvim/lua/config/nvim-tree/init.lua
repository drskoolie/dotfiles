require("nvim-tree").setup({
	view = {
		mappings = {
		  list = {
			-- { key = "h", action = "dir_up" },
			{ key = "h", action = "close_node" },
			{ key = "l", action = "open"},
			{ key = "d", action = "trash"},
			{ key = "D", action = "remove"},
		  }
	  }
  }
})
