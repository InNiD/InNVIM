return {
    "nvimdev/lspsaga.nvim",
    enabled = false,
    version = "*",
    event = "LspAttach",
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'nvim-tree/nvim-web-devicons',
    },
    opts = {
        finder = {
            keys = {
                toggle_or_open = "<CR>",
            },
        },
        symbol_in_winbar = {
            enable = false,
        },
        outline = {
            close_after_jump = true,
            layout = 'float',
        },
    },
    keys = {
        -- { "grn", ":Lspsaga rename ++project<CR>", silent = true },
        -- { "gra", ":Lspsaga code_action<CR>", silent = true },
        -- { "gd", ":Lspsaga goto_definition<CR>", silent = true },
        -- { "K", ":Lspsaga hover_doc<CR>", silent = true },
        -- { "grr", ":Lspsaga finder<CR>", silent = true },
        -- { "<leader>nd", ":Lspsaga diagnostic_jump_next<CR>", silent = true },
        -- { "<leader>pd", ":Lspsaga diagnostic_jump_prev<CR>", silent = true },
        -- { "<leader>sd", ":Lspsaga show_line_diagnostics<CR>", silent = true },
        -- { "gO", ":Lspsaga outline<CR>", silent = true },
    },
}
