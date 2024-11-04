vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.autoformat = true

local opt = vim.opt

opt.termguicolors = true
opt.cursorline = true
opt.list = true
opt.signcolumn = "yes"

opt.number = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

opt.ignorecase = true
opt.hlsearch = false
opt.incsearch = true

opt.mouse = "a"
opt.scrolloff = 8

opt.spelllang = {"en"}
opt.spelloptions:append("noplainbuffer")

opt.swapfile = false
opt.backup = false

opt.wrap = false

opt.updatetime = 50

opt.autowrite = false
