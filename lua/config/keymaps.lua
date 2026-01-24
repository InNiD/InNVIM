local opts = {
    noremap = true,
    silent = true,
}
--------------
-- All mode --
--------------

vim.keymap.set({ "n" }, "<A-h>", "<C-w>h", opts)
vim.keymap.set({ "n" }, "<A-j>", "<C-w>j", opts)
vim.keymap.set({ "n" }, "<A-k>", "<C-w>k", opts)
vim.keymap.set({ "n" }, "<A-l>", "<C-w>l", opts)
vim.keymap.set({ "t", "i" }, "<A-h>", "<C-\\><C-n><C-w>hi", opts)
vim.keymap.set({ "t", "i" }, "<A-j>", "<C-\\><C-n><C-w>ji", opts)
vim.keymap.set({ "t", "i" }, "<A-k>", "<C-\\><C-n><C-w>ki", opts)
vim.keymap.set({ "t", "i" }, "<A-l>", "<C-\\><C-n><C-w>li", opts)

vim.keymap.set({ "n", "i", "v", "t"}, "<A-->", "<Cmd>split<CR>", opts)
vim.keymap.set({ "n", "i", "v", "t"}, "<A-\\>", "<Cmd>vsplit<CR>", opts)
vim.keymap.set({ "n", "i", "v", "t"}, "<A-w>", "<Cmd>close<CR>", opts)
vim.keymap.set({ "n", "i", "v", "t"}, "<A-o>", "<Cmd>only<CR>", opts)

vim.keymap.set({ "n", "i", "v", "t"}, "<A-Up>", "<Cmd>resize +2<CR>", opts)
vim.keymap.set({ "n", "i", "v", "t"}, "<A-Down>", "<Cmd>resize -2<CR>", opts)
vim.keymap.set({ "n", "i", "v", "t"}, "<A-Left>", "<Cmd>vertical resize -2<CR>", opts)
vim.keymap.set({ "n", "i", "v", "t"}, "<A-Right>", "<Cmd>vertical resize +2<CR>", opts)

-----------------
-- Normal mode --
-----------------

vim.keymap.set("n", "x", '"_x', opts)
vim.keymap.set("n", "s", '"_s', opts)

-----------------
-- INSERT mode --
-----------------

vim.keymap.set("i", "jk", "<Esc>", opts)

-----------------
-- Visual mode --
-----------------

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-------------------
-- Terminal mode --
-------------------

-- Use <Esc> to exit terminal mode
-- vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

