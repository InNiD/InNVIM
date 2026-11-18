vim.pack.add({
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons"},
})

vim.api.nvim_create_autocmd("VimEnter", {
    group = vim.api.nvim_create_augroup("lualine", { clear = true }),
    once = true,
    callback = function()
        require('lualine').setup {
            options = {
                component_separators = { left = " ", right = " " },
                section_separators = { left = " ", right = " " },
                -- section_separators = { left = "", right = "" },
            },
            sections = {
                lualine_b = { "branch", "diff" },
                lualine_c = { "filetype" },
                lualine_x = { "filesize" }
            },
        }
    end,
})

