local ensure_lazy = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/lazy.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({
            'git', 'clone', '--depth', '1', 'https://github.com/folke/lazy.nvim',
            install_path
        })
        vim.cmd [[packadd lazy.nvim]]
    end
end
ensure_lazy()

require('lazy').setup({
    { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },  
    { "mason-org/mason.nvim" },
    { 'neovim/nvim-lspconfig' },  
    { 'nvim-telescope/telescope.nvim', dependencies = { 'nvim-lua/plenary.nvim' } }, 
    { 'folke/tokyonight.nvim' },

    { 'nvim-lualine/lualine.nvim', dependencies = { 'kyazdani42/nvim-web-devicons' } },

    { 'editorconfig/editorconfig-vim' }, 
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup({
                check_ts = true, -- activa integración con treesitter para mejor contexto
                enable_check_bracket_line = true,
            })
        end
    }

})

require('tokyonight').setup({
    style = "night",   -- Puedes elegir entre "night", "storm", o "day"
    transparent = true,  -- Esto hace que el fondo sea transparente
    terminal_colors = true,  -- Usar los colores de terminal personalizados
    styles = {
        comments = { italic = true },
        keywords = { bold = true },
        functions = { bold = true },
        variables = { italic = true },
    },
    sidebars = { "qf", "vista_kind", "terminal", "packer" }, -- Opcional: cambiar color de las ventanas laterales
})

vim.cmd [[colorscheme tokyonight]]

vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.number = true
vim.o.relativenumber = true
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.wrap = false
vim.o.clipboard = 'unnamedplus'
vim.o.autoindent = true
vim.o.smarttab = true

vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

vim.o.lazyredraw = true
vim.o.history = 1000

vim.g.mapleader = " "
vim.keymap.set('n', '<Leader>w', ':w<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>q', ':q<CR>', { noremap = true, silent = true }) 
vim.keymap.set('n', '<Leader>n', ':enew<CR>', { noremap = true, silent = true })


require('lualine').setup {
    options = { theme = 'vim' },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff'},
        lualine_c = {'filename'},
        lualine_x = {'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    }
}

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

local lspconfig = require('lspconfig')

require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

    sync_install = false,

    auto_install = true,

    ignore_install = { },

    highlight = {
        enable = true,

        additional_vim_regex_highlighting = false,
    },
}
