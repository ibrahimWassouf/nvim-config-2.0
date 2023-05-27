vim.o.number = true
vim.o.autoindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.syntax = "on"
vim.o.expandtab = true
vim.o.linebreak = true
vim.o.textwidth = 80
vim.o.wrap = false

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", ":Neotree toggle<cr>")
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<leader>sh", ":wincmd s<CR>")
vim.keymap.set("n", "<leader>sv", ":wincmd v<CR>")
