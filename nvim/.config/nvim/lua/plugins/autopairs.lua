return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup({
            check_ts = true, -- activa integración con treesitter para mejor contexto
            enable_check_bracket_line = true,
        })
    end
}
