return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "gopls",
      "gofumpt",
      "golines",
      "goimports",
      "lua_ls",
      "prettier",
    },
  },
}
