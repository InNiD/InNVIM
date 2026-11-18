vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("LspAttach", { clear = true }),
    callback = function (args)
        local opts = { noremap = true, silent = true, }

        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "<C-k>", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>sd", function()
            vim.diagnostic.open_float()
        end, opts)
    end,
})

