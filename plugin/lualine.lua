vim.pack.add({
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons"},
})

vim.api.nvim_create_autocmd("VimEnter", {
    group = vim.api.nvim_create_augroup("lualine", { clear = true }),
    once = true,
    callback = function()
        require("lualine").setup {
            options = {
                component_separators = { left = "", right = "" },
                section_separators = { left = " ", right = " " },
                -- section_separators = { left = "", right = "" },
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch", "diff", "diagnostics" },
                lualine_c = { "filename" },
                lualine_x = { "filesize", "filetype" },
                lualine_y = { "progress" },
                lualine_z = { "location" }
            },
            -- sections = {
            --     lualine_a = {},
            --     lualine_b = {},
            --     lualine_c = { "branch", "diff", "diagnostics", "filename" },
            --     lualine_x = { "filesize", "progress", "location" },
            --     lualine_y = {},
            --     lualine_z = {}
            -- },
        }
    end,
})

