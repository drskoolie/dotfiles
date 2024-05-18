-- Old Color Scheme
-- vim.opt.termguicolors = true
-- vim.cmd[[set t_Co=256]]
-- vim.cmd[[colorscheme habamax]]
-- vim.cmd [[hi Normal ctermbg=none guibg=none]]
-- vim.cmd [[hi NormalFloat ctermbg=none guibg=none]]
-- vim.cmd [[hi NormalNC ctermbg=none guibg=none]]
-- vim.cmd [[hi SignColumn ctermbg=none guibg=none]]
-- vim.cmd [[hi EndOfBuffer ctermbg=none guibg=none]]
-- vim.cmd [[hi QuickFixLine ctermbg=none guibg=none]]
-- vim.cmd [[hi LineNr ctermbg=none guibg=none]]
-- vim.cmd [[hi CursorLineNr ctermbg=none guibg=none]]

require("catppuccin").setup({
    flavour = "auto", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = true, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.10, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
    },
    color_overrides = {},
    custom_highlights = {},
    default_integrations = true,
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
		markdown = true,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        notify = false,
		neotree = true,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
