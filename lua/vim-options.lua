-- leader -- 
vim.g.mapleader = " "
-- indent -- 
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
--number lines -- 
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- window management
vim.keymap.set("n", "<leader>v", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window vertically
vim.keymap.set("n", "<leader>E", "<C-w>=") -- make split windows equal width & height
vim.keymap.set("n", "<leader>x", ":close<CR>") -- close current split window

vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")


