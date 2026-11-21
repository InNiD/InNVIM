vim.pack.add({
    { src = "https://github.com/saghen/blink.lib" },
    { src = "https://github.com/saghen/blink.cmp" },
    { src = "https://github.com/rafamadriz/friendly-snippets" },
})

vim.api.nvim_create_autocmd({ "InsertEnter", "CmdlineEnter" }, {
    group = vim.api.nvim_create_augroup("blink", { clear = true }),
    once = true,
    callback = function()
        require("blink.cmp").build():pwait()
        local cmp = require("blink.cmp")
        require("blink.cmp").setup({
            keymap = {
                preset = "none",
                ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
                ['<C-e>'] = { 'hide', 'fallback' },
                ['<C-y>'] = { 'select_and_accept', 'fallback' },

                ['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
                ['<C-n>'] = { 'select_next', 'fallback_to_mappings' },

                ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
                ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },

                ['<Tab>'] = { 'snippet_forward', 'fallback' },
                ['<S-Tab>'] = { 'snippet_backward', 'fallback' },

                ["<C-u>"] = { "scroll_signature_up", "fallback" },
                ["<C-d>"] = { "scroll_signature_down", "fallback" },
                ["<C-s>"] = { "show_signature", "hide_signature", "fallback" },
            },

            completion = {
                menu = {
                    draw = {
                        treesitter = { "lsp" },
                    },
                },
            },

            fuzzy = { implementation = "prefer_rust" },

            signature = { enabled = true },
        })
        vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "NONE" })
        -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
        -- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
    end,
})

