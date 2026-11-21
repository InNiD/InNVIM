vim.pack.add({
    { src = "https://github.com/akinsho/bufferline.nvim", version = vim.version.range("*") },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
})

vim.api.nvim_create_autocmd("VimEnter", {
    group = vim.api.nvim_create_augroup("bufferline", { clear = true }),
    once = true,
    callback = function()
        require("bufferline").setup({
            options = {
                diagnostics = "nvim_lsp",
                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                    if context.buffer:current() then
                        return ''
                    end

                    local s = " "
                    for e, n in pairs(diagnostics_dict) do
                        local sym = e == "error" and " "
                        or (e == "warning" and " " or " ")
                        s = s .. n .. sym
                    end
                    return s
                end,
                always_show_bufferline = false,
            },
        })

        vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", { silent = true })
        vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", { silent = true })
        vim.keymap.set("t", "<C-h>", "<C-\\><C-n>:BufferLineCyclePrev<CR>i", { silent = true })
        vim.keymap.set("t", "<C-l>", "<C-\\><C-n>:BufferLineCycleNext<CR>i", { silent = true })
        vim.keymap.set("n", "<C-w>", ":bdelete<CR>", { silent = true, nowait = true })
        -- vim.keymap.set("n", "<leader>bo", ":BufferLineCloseOthers<CR>", { silent = true })
        -- vim.keymap.set("n", "<leader>bp", ":BufferLinePick<CR>", { silent = true })
        -- vim.keymap.set("n", "<leader>bc", ":BufferLinePickClose<CR>", { silent = true })
    end,
})

