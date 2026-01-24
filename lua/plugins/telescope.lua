return {
    'nvim-telescope/telescope.nvim',
    tag = 'v0.2.0',
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = 'mingw32-make'
        },
        -- "nvim-telescope/telescope-ui-select.nvim",
    },
    cmd = "Telescope",
    opts = {
        defaults = {
            initial_mode = "insert",
            mappings = {
                i = {
                    -- ["<C-j>"] = "move_selection_next",
                    -- ["<C-k>"] = "move_selection_previous",
                    -- ["<C-n>"] = "cycle_history_next",
                    -- ["<C-p>"] = "cycle_history_prev",
                },
            },
        },
        extensions = {
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
                case_mode = "smart_case",
            },
            -- ["ui-select"] = {
            --     require("telescope.themes").get_dropdown {}
            -- },
        },
    },
    config = function(_, opts)
        local telescope = require "telescope"
        telescope.setup(opts)
        telescope.load_extension("fzf")
        -- telescope.load_extension("ui-select")
    end,
    keys = {
        { "<leader>ff", "<Cmd>Telescope find_files<CR>", desc = "find file", silent = true },
        { "<leader>fg", "<Cmd>Telescope live_grep<CR>", desc = "live grep", silent = true },
        { "<leader>fc", "<Cmd>Telescope git_commits<CR>", desc = "git commits", silent = true },
        { "<leader>fo", "<Cmd>Telescope oldfiles<CR>", desc = "find oldfiles", silent = true },
        { "<leader>fb", "<Cmd>Telescope buffers<CR>", desc = "Telescope buffers", silent = true },

        { "gd", "<Cmd>Telescope lsp_definitions<CR>", desc = "go to definition", silent = true },
        { "gO", "<Cmd>Telescope lsp_document_symbols<CR>", desc = "show document symbols", silent = true },
        { "gri", "<Cmd>Telescope lsp_implementations<CR>", desc = "go to implementations", silent = true },
        { "grr", "<Cmd>Telescope lsp_references<CR>", desc = "go to regerences", silent = true },
        { "grt", "<Cmd>Telescope lsp_type_definitions<CR>", desc = "go to type_defineittions", silent = true },
        { "<leader>ld", "<Cmd>Telescope diagnostics<CR>", desc = "list diagnostics", silent = true },
        { "<leader>li", "<Cmd>Telescope lsp_incoming_calls<CR>", desc = "list where use", silent = true },
        { "<leader>lo", "<Cmd>Telescope lsp_outgoing_calls<CR>", desc = "list use what", silent = true },
    },
}
