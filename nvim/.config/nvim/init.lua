vim.g.mapleader = " "
require("config.lazy")

vim.cmd.colorscheme "retrobox"

vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.clipboard = "unnamedplus"

vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

