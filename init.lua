-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lspconfig").uiua.setup({})

require("oil").setup({
    default_file_explorer = true,
    columns = {
        "size",
        "mtime",
        "icon",
    },
    win_options = {
        wrap = false,
        signcolumn = "no",
        cursorcolumn = false,
        foldcolumn = "0",
        spell = false,
        list = false,
        conceallevel = 3,
        concealcursor = "nvic",
    },
    lsp_file_methods = {
        enabled = true,
        timeout_ms = 1000,
        autosave_changes = false,
    },
    constrain_cursor = "editable",
    watch_for_changes = true,
    view_options = {
        show_hidden = false,
        is_hidden_file = function(name, _)
            return vim.startswith(name, ".")
        end,
        natural_order = true,
        case_insensitive = true,
        sort = {
            { "type", "asc" },
            { "name", "asc" },
        },
    },
    preview = {
        -- Width dimensions can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
        -- min_width and max_width can be a single value or a list of mixed integer/float types.
        -- max_width = {100, 0.8} means "the lesser of 100 columns or 80% of total"
        max_width = 0.9,
        -- min_width = {40, 0.4} means "the greater of 40 columns or 40% of total"
        min_width = { 40, 0.4 },
        -- optionally define an integer/float for the exact width of the preview window
        width = nil,
        -- Height dimensions can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
        -- min_height and max_height can be a single value or a list of mixed integer/float types.
        -- max_height = {80, 0.9} means "the lesser of 80 columns or 90% of total"
        max_height = 0.9,
        -- min_height = {5, 0.1} means "the greater of 5 columns or 10% of total"
        min_height = { 5, 0.1 },
        -- optionally define an integer/float for the exact height of the preview window
        height = nil,
        border = "rounded",
        win_options = {
            winblend = 0,
        },
        update_on_cursor_moved = true,
    },
})

require("flexoki").setup({
    variant = "auto", -- auto, moon, or dawn
    dark_variant = true,
    dim_inactive_windows = false,
    extend_background_behind_borders = true,

    enable = {
        terminal = true,
    },

    styles = {
        bold = true,
        italic = false,
    },

    groups = {
        border = "muted",
        link = "purple_two",
        panel = "surface",

        error = "red_one",
        hint = "purple_one",
        info = "cyan_one",
        ok = "green_one",
        warn = "orange_one",
        note = "blue_one",
        todo = "magenta_one",

        git_add = "green_one",
        git_change = "yellow_one",
        git_delete = "red_one",
        git_dirty = "yellow_one",
        git_ignore = "muted",
        git_merge = "purple_one",
        git_rename = "blue_one",
        git_stage = "purple_one",
        git_text = "magenta_one",
        git_untracked = "subtle",

        h1 = "purple_two",
        h2 = "cyan_two",
        h3 = "magenta_two",
        h4 = "orange_two",
        h5 = "blue_two",
        h6 = "cyan_two",
    },

    palette = {
        -- Override the builtin palette per variant
        -- moon = {
        --     base = '#100f0f',
        --     overlay = '#1c1b1a',
        -- },
    },

    highlight_groups = {
        -- Comment = { fg = "subtle" },
        -- VertSplit = { fg = "muted", bg = "muted" },
    },

    before_highlight = function(group, highlight, palette)
        -- Disable all undercurls
        -- if highlight.undercurl then
        --     highlight.undercurl = false
        -- end
        --
        -- Change palette colour
        -- if highlight.fg == palette.blue_two then
        --     highlight.fg = palette.cyan_two
        -- end
    end,
})

vim.cmd("colorscheme flexoki")
