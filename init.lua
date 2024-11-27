local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("keymaps")
require("lazy").setup("plugins", opts)

if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.g.neovide_window_blurred = true
  vim.g.neovide_cursor_animation_length = 0
end
