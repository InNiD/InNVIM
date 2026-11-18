vim.pack.add({ { src = "https://github.com/windwp/nvim-autopairs" } })

vim.api.nvim_create_autocmd("InsertEnter", {
    group = vim.api.nvim_create_augroup("autopairs", { clear = true }),
    once = true,
    callback = function()
        local npairs = require("nvim-autopairs")
        local basic = require("nvim-autopairs.rules.basic")
        npairs.setup()
        npairs.remove_rule("'")
        local quote = basic.quote_creator(npairs.config)
        npairs.add_rule(quote("'", "'", { "-verilog" }))
    end,
})

