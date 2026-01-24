vim.api.nvim_create_autocmd("LspAttach", {
    callback = function (args)
        local opts = { noremap = true, silent = true }

        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>sd", function()
            vim.diagnostic.open_float()
        end, opts)
    end
})

vim.lsp.enable({ "clangd", "verible" })
