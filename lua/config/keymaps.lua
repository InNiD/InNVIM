local opts = {
    noremap = true,
    silent = true,
}

--------------------------------  All Mode --------------------------------

vim.keymap.set({ "n" }, "<A-h>", "<C-w>h", { noremap = true })
vim.keymap.set({ "n" }, "<A-j>", "<C-w>j", { noremap = true })
vim.keymap.set({ "n" }, "<A-k>", "<C-w>k", { noremap = true })
vim.keymap.set({ "n" }, "<A-l>", "<C-w>l", { noremap = true })
vim.keymap.set({ "i", "t" }, "<A-h>", "<C-\\><C-n><C-w>hi", { noremap = true })
vim.keymap.set({ "i", "t" }, "<A-j>", "<C-\\><C-n><C-w>ji", { noremap = true })
vim.keymap.set({ "i", "t" }, "<A-k>", "<C-\\><C-n><C-w>ki", { noremap = true })
vim.keymap.set({ "i", "t" }, "<A-l>", "<C-\\><C-n><C-w>li", { noremap = true })

vim.keymap.set({ "n" }, "<A-->", ":split<CR>", opts)
vim.keymap.set({ "n" }, "<A-\\>", ":vsplit<CR>", opts)
vim.keymap.set({ "n" }, "<A-w>", ":close<CR>", opts)
vim.keymap.set({ "n" }, "<A-o>", ":only<CR>", opts)
vim.keymap.set({ "i", "t" }, "<A-->", "<C-\\><C-n>:split<CR>i", opts)
vim.keymap.set({ "i", "t" }, "<A-\\>", "<C-\\><C-n>:vsplit<CR>i", opts)
vim.keymap.set({ "i", "t" }, "<A-w>", "<C-\\><C-n>:close<CR>i", opts)
vim.keymap.set({ "i", "t" }, "<A-o>", "<C-\\><C-n>:only<CR>i", opts)

vim.keymap.set({ "n" }, "<A-Up>", ":resize +2<CR>", opts)
vim.keymap.set({ "n" }, "<A-Down>", ":resize -2<CR>", opts)
vim.keymap.set({ "n" }, "<A-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set({ "n" }, "<A-Right>", ":vertical resize +2<CR>", opts)
vim.keymap.set({ "i", "t" }, "<A-Up>", "<C-\\><C-n>:resize +2<CR>i", opts)
vim.keymap.set({ "i", "t" }, "<A-Down>", "<C-\\><C-n>:resize -2<CR>i", opts)
vim.keymap.set({ "i", "t" }, "<A-Left>", "<C-\\><C-n>:vertical resize -2<CR>i", opts)
vim.keymap.set({ "i", "t" }, "<A-Right>", "<C-\\><C-n>:vertical resize +2<CR>i", opts)


vim.keymap.set({ "n", "x", "o" }, "H", "^", { noremap = true })
vim.keymap.set({ "n", "x", "o" }, "J", "4j", { noremap = true })
vim.keymap.set({ "n", "x", "o" }, "K", "4k", { noremap = true })
vim.keymap.set({ "n", "x", "o" }, "L", "$", { noremap = true })

--------------------------------  Normal Mode --------------------------------

-- vim.keymap.set("n", "j", "gj", opts)
-- vim.keymap.set("n", "k", "gk", opts)
vim.keymap.set("n", "x", '"_x', { noremap = true })
vim.keymap.set("n", "s", '"_s', { noremap = true })
vim.keymap.set("n", "<A-d>", '"_d', { noremap = true })
vim.keymap.set("n", "<A-c>", '"_c', { noremap = true })
vim.keymap.set("n", "<A-x>", "i<space><Esc>", { noremap = true })

vim.keymap.set("n", "<C-j>", "J", { noremap = true })

vim.keymap.set("n", "<leader>cr", ":<c-u><c-r><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr><c-f><left>", opts)

--------------------------------  Insert Mode --------------------------------

vim.keymap.set("i", "jk", "<Esc>", { noremap = true })
vim.keymap.set("i", "<C-h>", "<left>", { noremap = true })
vim.keymap.set("i", "<C-j>", "<down>", { noremap = true })
vim.keymap.set("i", "<C-k>", "<up>", { noremap = true })
vim.keymap.set("i", "<C-l>", "<right>", { noremap = true })

--------------------------------  Visual Mode --------------------------------

vim.keymap.set("x", "<C-j>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("x", "<C-k>", ":m '<-2<CR>gv=gv", opts)

vim.keymap.set("x", "<", "<gv", { noremap = true })
vim.keymap.set("x", ">", ">gv", { noremap = true })

--------------------------------  Command Mode --------------------------------

vim.keymap.set("c", "<C-p>", "<up>")
vim.keymap.set("c", "<C-n>", "<down>")

vim.keymap.set("c", "<C-h>", "<left>")
vim.keymap.set("c", "<C-l>", "<right>")
vim.keymap.set("c", "<C-b>", "<S-left>")
vim.keymap.set("c", "<C-w>", "<S-right>")
vim.keymap.set("c", "<C-a>", "<home>")
vim.keymap.set("c", "<C-e>", "<end>")

--------------------------------  Terminal Mode --------------------------------

-- Use <Esc> to exit terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-------------------------------- Iabbrev --------------------------------

vim.cmd("iab xdate <C-r>=strftime('%d/%m/%y %H:%M:%S')<CR>")

