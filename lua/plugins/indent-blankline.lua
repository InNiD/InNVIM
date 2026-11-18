return {
    "lukas-reineke/indent-blankline.nvim",
    enabled = false,
    version = "*",
    event = "VeryLazy",
    main = "ibl",
    opts = {
        exclude = {
            filetypes = { "dashboard", "terminal", "help", "log", "markdown", "TelescopePrompt" },
        },
    },
}
