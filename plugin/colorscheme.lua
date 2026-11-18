vim.pack.add({ { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } })
require("catppuccin").setup({
    -- latte, frappe, macchiato, mocha
    flavour = "frappe",
    transparent_background = true,
    float = {
        -- transparent = true,
        -- solid = true,
    },
})
vim.cmd.colorscheme("catppuccin-nvim")


-- vim.pack.add({ { src = "https://github.com/sainnhe/everforest", name = "everforest" } })
-- -- hard, medium, soft
-- vim.g.everforest_background = "soft"
-- vim.g.everforest_transparent_background = 2
-- vim.cmd.colorscheme("everforest")


-- vim.pack.add({ { src = "https://github.com/sainnhe/gruvbox-material", name = "gruvbox" } })
-- -- hard, medium, soft
-- vim.g.gruvbox_material_background = "medium"
-- -- material, mix, original
-- vim.g.gruvbox_material_foreground = "material"
-- vim.g.gruvbox_material_transparent_background = 1
-- vim.cmd.colorscheme("gruvbox-material")


-- vim.pack.add({ { src = "https://github.com/marko-cerovac/material.nvim", name = "material" } })
-- require('material').setup({
--     disable = {
--         background = true,
--     },
-- })
-- -- darker, lighter, oceanic, palenight, deep ocean
-- vim.g.material_style = "palenight"
-- vim.cmd.colorscheme("material")


-- vim.pack.add({ { src = "https://github.com/shaunsingh/moonlight.nvim", name = "moonlight" } })
-- vim.g.moonlight_disable_background = true
-- vim.cmd.colorscheme("moonlight")


-- vim.pack.add({ { src = "https://github.com/qiekn/naysayer.nvim", name = "naysayer" } })
-- vim.cmd.colorscheme("naysayer")


-- vim.pack.add({ { src = "https://github.com/shaunsingh/nord.nvim", name = "nord" } })
-- vim.g.nord_disable_background = true
-- -- vim.g.nord_cursorline_transparent = true
-- -- vim.g.nord_enable_sidebar_background = true
-- vim.cmd.colorscheme("nord")


-- vim.pack.add({ { src = "https://github.com/folke/tokyonight.nvim", name = "tokyonight" } })
-- require("tokyonight").setup({
--     -- night, storm, moon, day
--     style = "moon",
--     transparent = true,
-- })
-- vim.cmd.colorscheme("tokyonight")

