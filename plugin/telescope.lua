-- vim.api.nvim_create_autocmd("VimEnter", {
--     group = vim.api.nvim_create_augroup("telescope", { clear = true }),
--     once = true,
--     callback = function()
        vim.pack.add({
            { src = "https://github.com/nvim-telescope/telescope.nvim" },
            { src = "https://github.com/nvim-lua/plenary.nvim" },
            { src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        })

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>f", builtin.find_files)
        vim.keymap.set("n", "<leader>g", builtin.live_grep)
        vim.keymap.set("n", "<leader>b", builtin.buffers)
        vim.keymap.set("n", "<leader>c", builtin.git_commits)
        vim.keymap.set("n", "gd", builtin.lsp_definitions)
        vim.keymap.set("n", "gO", builtin.lsp_document_symbols)
        vim.keymap.set("n", "gri", builtin.lsp_implementations)
        vim.keymap.set("n", "grr", builtin.lsp_references)
        vim.keymap.set("n", "grt", builtin.lsp_type_definitions)
        vim.keymap.set("n", "<leader>d", builtin.diagnostics)
        vim.keymap.set("n", "<leader>i", builtin.lsp_incoming_calls)
        vim.keymap.set("n", "<leader>o", builtin.lsp_outgoing_calls)
    -- end,
-- })

