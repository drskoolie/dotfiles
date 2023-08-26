require('neorg').setup {
	build = ":Neorg sync-parsers",
    load = {

		["core.concealer"] = {
			config = {
				folds = true,
				icon_preset = "diamond",
			}},
        ["core.defaults"] = {},
		["core.journal"] = {
			config = {
				journal_folder ="journal",
				strategy = "flat",
			},
		},
        ["core.dirman"] = {
            config = {
                workspaces = {
                    home = "~/github/neorg-notes/home",
                    work = "~/github/neorg-notes/work",
                }}},
		["core.keybinds"] = {
			config = {
				default_keybinds = false,

				hook = function(keybinds)
					keybinds.remap_event("norg", "n", "<CR>", "core.esupports.hop.hop-link")
				end,
			}},
    }
}
