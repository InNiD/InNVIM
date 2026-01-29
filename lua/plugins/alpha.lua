return {
    "goolord/alpha-nvim",
    -- enabled = false,
    version = "*",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        -- startify, dashboard, theta
        local theme = require("alpha.themes.startify")
        -- theme.file_icons.provider = "devicons"
        theme.section.header.val = {
                [[██╗███╗   ██╗███╗   ██╗██╗   ██╗██╗███╗   ███╗]],
                [[██║████╗  ██║████╗  ██║██║   ██║██║████╗ ████║]],
                [[██║██╔██╗ ██║██╔██╗ ██║██║   ██║██║██╔████╔██║]],
                [[██║██║╚██╗██║██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
                [[██║██║ ╚████║██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║]],
                [[╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝]],
        }
        require("alpha").setup(
            theme.config
        )
    end,
}
