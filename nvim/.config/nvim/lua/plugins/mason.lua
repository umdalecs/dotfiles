return { 
    "mason-org/mason.nvim",
    config = function()
        require("mason").setup({
            ensure_installed = {"gopls"},
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })
    end
}
