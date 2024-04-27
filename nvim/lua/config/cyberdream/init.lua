require("cyberdream").setup({
    -- Enable transparent background
    transparent = true, -- Default: false

    -- Enable italics comments
    italic_comments = true, -- Default: false

    -- Replace all fillchars with ' ' for the ultimate clean look
    hide_fillchars = true, -- Default: false

    -- Modern borderless telescope theme
    borderless_telescope = false, -- Default: true

    -- Set terminal colors used in `:terminal`
    terminal_colors = true, -- Default: true

    theme = { -- Default: nil
        highlights = {
            -- Highlight groups to override, adding new groups is also possible
            -- See `:help highlight-groups` for a list of highlight groups

            -- Example:
            Comment = { fg = "#696969", bg = "NONE", italic = true },

            -- Complete list can be found in `lua/cyberdream/theme.lua`
        },

        -- Override a color entirely
        colors = {
            -- For a list of colors see `lua/cyberdream/colours.lua`
            -- Example:
            bg = "#000000",
            green = "#00ff00",
            magenta = "#ff00ff",
        },
    },
})
