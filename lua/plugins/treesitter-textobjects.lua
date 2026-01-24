return {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    event = "VeryLazy",
    dependencies = { "nvim-treesitter/nvim-treesitter", },
    init = function()
        vim.g.no_plugin_maps = true
    end,
    config = function()
        -- block
        vim.keymap.set({ "x", "o" }, "ab", function()
            require "nvim-treesitter-textobjects.select".select_textobject("@block.outer", "textobjects")
        end)
        vim.keymap.set({ "x", "o" }, "ib", function()
            require "nvim-treesitter-textobjects.select".select_textobject("@block.inner", "textobjects")
        end)
        vim.keymap.set({ "n", "x", "o" }, "]b", function()
            require("nvim-treesitter-textobjects.move").goto_next_start("@block.outer", "textobjects")
        end)
        vim.keymap.set({ "n", "x", "o" }, "[b", function()
            require("nvim-treesitter-textobjects.move").goto_previous_start("@block.outer", "textobjects")
        end)
        -- function
        vim.keymap.set({ "x", "o" }, "af", function()
            require "nvim-treesitter-textobjects.select".select_textobject("@function.outer", "textobjects")
        end)
        vim.keymap.set({ "x", "o" }, "if", function()
            require "nvim-treesitter-textobjects.select".select_textobject("@function.inner", "textobjects")
        end)
        vim.keymap.set({ "n", "x", "o" }, "]f", function()
            require("nvim-treesitter-textobjects.move").goto_next_start("@function.outer", "textobjects")
        end)
        vim.keymap.set({ "n", "x", "o" }, "[f", function()
            require("nvim-treesitter-textobjects.move").goto_previous_start("@function.outer", "textobjects")
        end)
        -- class
        vim.keymap.set({ "x", "o" }, "ac", function()
            require "nvim-treesitter-textobjects.select".select_textobject("@class.outer", "textobjects")
        end)
        vim.keymap.set({ "x", "o" }, "ic", function()
            require "nvim-treesitter-textobjects.select".select_textobject("@class.inner", "textobjects")
        end)
        vim.keymap.set({ "n", "x", "o" }, "]c", function()
            require("nvim-treesitter-textobjects.move").goto_next_start("@class.outer", "textobjects")
        end)
        vim.keymap.set({ "n", "x", "o" }, "[c", function()
            require("nvim-treesitter-textobjects.move").goto_previous_start("@class.outer", "textobjects")
        end)
        vim.keymap.set({ "x", "o" }, "al", function()
            require "nvim-treesitter-textobjects.select".select_textobject("@loop.outer", "textobjects")
        end)
        vim.keymap.set({ "x", "o" }, "il", function()
            require "nvim-treesitter-textobjects.select".select_textobject("@loop.inner", "textobjects")
        end)
        vim.keymap.set({ "n", "x", "o" }, "]l", function()
            require("nvim-treesitter-textobjects.move").goto_next_start("@loop.outer", "textobjects")
        end)
        vim.keymap.set({ "n", "x", "o" }, "[l", function()
            require("nvim-treesitter-textobjects.move").goto_previous_start("@loop.outer", "textobjects")
        end)
    end,
}
