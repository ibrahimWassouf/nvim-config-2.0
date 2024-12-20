vim.o.number = true
vim.o.autoindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
--vim.o.syntax = "on"
vim.o.expandtab = true
vim.o.linebreak = true
vim.o.textwidth = 72
vim.o.wrap = false
vim.o.tagstack = true

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", ":Neotree toggle<cr>")
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<leader>sh", ":wincmd s<CR>")
vim.keymap.set("n", "<leader>sv", ":wincmd v<CR>")
-- format current paragraph without moving cursor
vim.keymap.set("n", "<leader>gw", "gwvipvipgw")
vim.keymap.set("n", "<leader>fs", ":silent %!prettier --stdin-filepath %w<CR>")

--lsp-saga
vim.keymap.set("n", "gp", "<cmd>Lspsaga peek_definition<CR>")
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", "td", "<cmd>Lspsaga peek_type_definition<CR>")
vim.keymap.set("n", "gh", "<cmd>Lspsaga finder<CR>")
vim.keymap.set("n", "ld", "<cmd>Lspsaga show_line_diagnostics<CR>")
vim.keymap.set("n", "<leader>K", ":Lspsaga hover_doc<CR>")
vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<cr>")
vim.keymap.set("n", "<leader>gr", "<cmd>Lspsaga rename<CR>")
vim.keymap.set("n", "<leader>vd", "<cmd>vim.diagnostic.open_float<cr>")
vim.keymap.set("n", "<leader>bd", "<cmd>Lspsaga show_buf_diagnostics<CR>")
--trouble keymaps
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { silent = true, noremap = true })

--luasnip
local ls = require("plugins/luasnip")
vim.keymap.set({ "i" }, "<C-K>", function()
  ls.expand()
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-L>", function()
  ls.jump(1)
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-J>", function()
  ls.jump(-1)
end, { silent = true })

--neovide clipboard bindings
if vim.g.neovide then
  vim.keymap.set("n", "<D-s>", ":w<CR>")
  vim.keymap.set("v", "<D-c>", '"+y')
  vim.keymap.set("n", "<D-v>", '"+P')
  vim.keymap.set("v", "<D-v>", ':"+P')
  vim.keymap.set("c", "<D-v>", "<C-R>+")
  vim.keymap.set("i", "<D-v>", '<ESC>;"+Pli')
end

vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })
