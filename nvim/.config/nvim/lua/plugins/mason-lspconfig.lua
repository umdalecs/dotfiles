return {
    "mason-org/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "ts_ls", "pyright" },
            automatic_installation = true,
        })
    end
}

