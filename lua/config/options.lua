-- Others
vim.opt.autoread = true
vim.opt.confirm = true
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.mouse = "a"
vim.opt.scrolloff = 8
-- vim.opt.sidescrolloff = 16
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.wrap = false

-- Appear
vim.opt.cmdheight = 1
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.laststatus = 3
-- vim.opt.number = true
-- vim.opt.relativenumber = true
vim.opt.showmode = false
vim.opt.showtabline = 2
vim.opt.signcolumn = "yes"
vim.opt.title = true
vim.opt.termguicolors = true
vim.opt.winborder = "rounded"
-- vim.opt.colorcolumn = "80"

-- Edit
vim.api.nvim_create_autocmd("UIEnter", {
    callback = function()
        vim.opt.clipboard = "unnamedplus"
    end,
})
vim.diagnostic.config({
    signs = false,
    virtual_text = true,
    update_in_insert = true,
})
-- vim.opt.matchpairs:append("<:>")
vim.opt.swapfile = false
vim.opt.virtualedit = "block"
vim.opt.whichwrap:append("h,l")

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Tab
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- For Powershell
local powershell_options = {
  shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
  shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
  shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
  shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
  shellquote = "",
  shellxquote = "",
}
for option, value in pairs(powershell_options) do
  vim.opt[option] = value
end

-- For Verilog
vim.g.filetype_v = "verilog"

