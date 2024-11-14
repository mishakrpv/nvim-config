vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

local lazy_config = require "lazy"

require("lazy").setup({
  "nvim-lua/plenary.nvim",
  { import = "plugins" }
}, lazy_config)

require "options"
require "autocmds"

vim.schedule(function()
  require "keymaps"
end)
