vim.api.nvim_create_autocmd("VimEnter", {
    group = vim.api.nvim_create_augroup("surround", { clear = true }),
    once = true,
    callback = function()
        vim.pack.add({ { src = "https://github.com/kylechui/nvim-surround" } })
    end,
})

