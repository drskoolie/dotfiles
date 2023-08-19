require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.dirman"] = {
            config = {
                workspaces = {
                    work = "~/github/neorg-notes/work",
                    home = "~/github/neorg-notes/home",
                }
            }
        }
    }
}
