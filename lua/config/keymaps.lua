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
vim.keymap.set({ "i", "t" }, "<A-h>", "<C-\\><C-n><C-w>hi", opts)
vim.keymap.set({ "i", "t" }, "<A-j>", "<C-\\><C-n><C-w>ji", opts)
vim.keymap.set({ "i", "t" }, "<A-k>", "<C-\\><C-n><C-w>ki", opts)
vim.keymap.set({ "i", "t" }, "<A-l>", "<C-\\><C-n><C-w>li", opts)

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


vim.keymap.set({ "n", "x", "o" }, "H", "^", opts)
vim.keymap.set({ "n", "x", "o" }, "L", "$", opts)

-----------------
-- Normal mode --
-----------------

vim.keymap.set("n", "x", '"_x', opts)
vim.keymap.set("n", "s", '"_s', opts)
vim.keymap.set("n", "<A-d>", '"_d', opts)
vim.keymap.set("n", "<A-c>", '"_c', opts)
vim.keymap.set("n", "<A-x>", "i<space><Esc>", opts)

vim.keymap.set("n", "<leader>cr", ":<c-u><c-r><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr><c-f><left>", opts)

-----------------
-- INSERT mode --
-----------------

vim.keymap.set("i", "jk", "<Esc>", opts)

vim.keymap.set("i", "<C-j>", "<right>", opts)

-----------------
-- Visual mode --
-----------------

vim.keymap.set("x", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("x", "K", ":m '<-2<CR>gv=gv", opts)

vim.keymap.set("x", "<", "<gv", opts)
vim.keymap.set("x", ">", ">gv", opts)

------------------
-- Command mode --
------------------

vim.keymap.set("c", "<C-p>", "<up>")
vim.keymap.set("c", "<C-n>", "<down>")

vim.keymap.set("c", "<C-h>", "<left>")
vim.keymap.set("c", "<C-l>", "<right>")
vim.keymap.set("c", "<C-b>", "<S-left>")
vim.keymap.set("c", "<C-w>", "<S-right>")
vim.keymap.set("c", "<C-a>", "<home>")
vim.keymap.set("c", "<C-e>", "<end>")

-------------------
-- Terminal mode --
-------------------

-- Use <Esc> to exit terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-------------
-- iabbrev --
-------------

vim.cmd("iab xdate <C-r>=strftime('%d/%m/%y %H:%M:%S')<CR>")

