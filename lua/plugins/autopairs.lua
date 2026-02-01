return {
    "windwp/nvim-autopairs",
    version = "*",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup()
        require('nvim-autopairs').remove_rule("'")
    end
}
