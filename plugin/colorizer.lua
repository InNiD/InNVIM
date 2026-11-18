vim.pack.add({ { src = "https://github.com/catgoose/nvim-colorizer.lua" } })

vim.api.nvim_create_autocmd("BufReadPre", {
    group = vim.api.nvim_create_augroup("colorizer", { clear = true }),
    callback = function()
        require("colorizer").setup({
            filetypes = {
                "css",
                "html",
                "javascript",
                "lua",
            },
        })
    end,
})

