return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = "VeryLazy",
    opts = {
        options = {
            diagnostics = "nvim_lsp",
            diagnostics_indicator = function(count, level, diagnostics_dict, context)
                local s = " "
                for e, n in pairs(diagnostics_dict) do
                    local sym = e == "error" and " "
                    or (e == "warning" and " " or " ")
                    s = s .. n .. sym
                end
                return s
            end,
        },
    },
    config = function(_, opts)
        require("bufferline").setup(opts)
        vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", { silent = true })
        vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", { silent = true })
        vim.keymap.set("t", "<C-h>", "<C-\\><C-n>:BufferLineCyclePrev<CR>i", { silent = true })
        vim.keymap.set("t", "<C-l>", "<C-\\><C-n>:BufferLineCycleNext<CR>i", { silent = true })
        vim.keymap.set("n", "<C-w>", ":bdelete<CR>", { silent = true, nowait = true })
        vim.keymap.set("n", "<leader>bo", ":BufferLineCloseOthers<CR>", { silent = true })
        vim.keymap.set("n", "<leader>bp", ":BufferLinePick<CR>", { silent = true })
        vim.keymap.set("n", "<leader>bc", ":BufferLinePickClose<CR>", { silent = true })
    end,
}
