vim.o.number = true
vim.o.autoindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.syntax = "on"
vim.o.expandtab = true
vim.o.linebreak = true
vim.o.textwidth = 72
vim.o.wrap = false

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", ":Neotree toggle<cr>")
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<leader>sh", ":wincmd s<CR>")
vim.keymap.set("n", "<leader>sv", ":wincmd v<CR>")
-- format current paragraph without moving cursor
vim.keymap.set("n", "<leader>gw", "gwvip")

--lsp-saga
vim.keymap.set("n", "gp", "<cmd>Lspsaga peek_definition<CR>")
vim.keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<CR>")
vim.keymap.set("n", "pt", "<cmd>Lspsaga peek_type_definition<CR>")
vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")
vim.keymap.set("n", "ld", "<cmd>Lspsaga show_line_diagnostics<CR>")
vim.keymap.set("n", "<leader>K", ":Lspsaga hover_doc<CR>")
vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<cr>")

vim.keymap.set("n", "<leader>vd", "<cmd>vim.diagnostic.open_float<cr>")

--trouble keymaps
vim.keymap.set("n", "<leader>xx", "<cmd>silent! TroubleToggle<cr>", { silent = true, noremap = true })
