-- 高亮复制的文本
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.hl.on_yank()
    end,
})

-- 取消换行自动添加注释
vim.api.nvim_create_autocmd({"FileType"}, {
    command = "set formatoptions-=ro"
})

-- 回到上次关闭时的位置
vim.api.nvim_create_autocmd("BufReadPost", {
    group = augroup,
    callback = function()
        if vim.o.diff then
            return
        end

        local last_pos = vim.api.nvim_buf_get_mark(0, '"')
        local last_line = vim.api.nvim_buf_line_count(0)

        local row = last_pos[1]
        if row < 1 or row > last_line then
            return
        end

        pcall(vim.api.nvim_win_set_cursor, 0, last_pos)
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    group = augroup,
    pattern = { "markdown", "gitcommit" },
    callback = function()
        vim.keymap.set("n", "j", "gj", { buffer = true })
        vim.keymap.set("n", "k", "gk", { buffer = true })
        vim.keymap.set("n", "0", "g0", { buffer = true })
        vim.keymap.set("n", "L", "g$", { buffer = true })
        vim.keymap.set("n", "H", "g^", { buffer = true })
        vim.keymap.set("x", "j", "gj", { buffer = true })
        vim.keymap.set("x", "k", "gk", { buffer = true })
        vim.keymap.set("x", "0", "g0", { buffer = true })
        vim.keymap.set("x", "L", "g$", { buffer = true })
        vim.keymap.set("x", "H", "g^", { buffer = true })
        vim.opt_local.linebreak = true
        vim.opt_local.spell = true
        vim.opt_local.wrap = true
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    group = augroup,
    pattern = { "text" },
    callback = function()
        vim.keymap.set("n", "j", "gj", { buffer = true })
        vim.keymap.set("n", "k", "gk", { buffer = true })
        vim.keymap.set("n", "0", "g0", { buffer = true })
        vim.keymap.set("n", "L", "g$", { buffer = true })
        vim.keymap.set("n", "H", "g^", { buffer = true })
        vim.keymap.set("x", "j", "gj", { buffer = true })
        vim.keymap.set("x", "k", "gk", { buffer = true })
        vim.keymap.set("x", "0", "g0", { buffer = true })
        vim.keymap.set("x", "L", "g$", { buffer = true })
        vim.keymap.set("x", "H", "g^", { buffer = true })
        vim.opt_local.spell = true
        vim.opt_local.textwidth = 80
        vim.opt_local.wrap = true
    end,
})

