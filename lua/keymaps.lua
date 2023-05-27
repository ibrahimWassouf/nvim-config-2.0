vim.o.number = true
vim.o.autoindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.syntax = "on"
vim.o.expandtab = true
vim.o.textwidth = 0
vim.o.wrap = "on"
vim.o.linebreak = "linebreak"
vim.o.breakindent = true
vim.o.formatexpr = ""

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", ":Neotree toggle<cr>")
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<leader>sh", ":wincmd s<CR>")
vim.keymap.set("n", "<leader>sv", ":wincmd v<CR>")

vim.cmd([[autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#]])
vim.cmd([[autocmd BufEnter * match OverLength /\&74v.*/]])
