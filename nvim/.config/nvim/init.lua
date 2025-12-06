vim.cmd.colorscheme("vim")

-- ============================
-- Common Neovim vim.opt config
-- ============================

local opt = vim.opt

-- UI
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = "auto"
opt.wrap = false

-- Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Editing behavior
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.completeopt = { "menu", "menuone", "noselect" }

-- Files
opt.swapfile = false
opt.backup = false
opt.undofile = true

-- Performance
opt.updatetime = 300
opt.timeoutlen = 400

-- Splits
opt.splitright = true
opt.splitbelow = true
