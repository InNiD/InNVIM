return {
    "goolord/alpha-nvim",
    -- enabled = false,
    version = "*",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        -- "nvim-lua/plenary.nvim",
    },
    config = function()
        -- startify, dashboard, theta
        local theme = require("alpha.themes.dashboard")
        -- theme.file_icons.provider = "devicons"
        theme.section.header.val = {
            "██╗███╗   ██╗███╗   ██╗██╗   ██╗██╗███╗   ███╗",
            "██║████╗  ██║████╗  ██║██║   ██║██║████╗ ████║",
            "██║██╔██╗ ██║██╔██╗ ██║██║   ██║██║██╔████╔██║",
            "██║██║╚██╗██║██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
            "██║██║ ╚████║██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
            "╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
        }
        theme.section.buttons.val = {
            theme.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
            theme.button("y", "  File explorer", ":Yazi<CR>"),
            theme.button("f", "  Find file", ":Telescope find_files<CR>"),
            theme.button("o", "  Find oldfile", ":Telescope oldfiles<CR>"),
            theme.button("g", "󰊄  Find word", "<Cmd>Telescope live_grep<CR>"),
            theme.button("q", "󰅚  Quit InNVIM" , ":qa<CR>"),
        }
        require("alpha").setup(theme.config)
    end,
}
