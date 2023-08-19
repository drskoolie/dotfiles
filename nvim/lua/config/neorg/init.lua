require('neorg').setup {
	build = ":Neorg sync-parsers",
    load = {

		["core.concealer"] = {},
        ["core.defaults"] = {},
        ["core.dirman"] = {
            config = {
                workspaces = {
                    home = "~/github/neorg-notes/home",
                    work = "~/github/neorg-notes/work",
                }}},
		["core.keybinds"] = {
			config = {
				default_keybinds = false,
			}},
    }
}
