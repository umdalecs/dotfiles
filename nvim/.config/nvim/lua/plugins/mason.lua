return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    opts.ensure_installed = opts.ensure_installed or {}

    vim.list_extend(opts.ensure_installed, {
      ensure_installed = {
        "gopls",
        "gofumpt",
        "golines",
        "goimports",
        "lua_ls",
        "jdtls",
        "kotlin-language-server",
        "html-lsp",
        "emmet-ls",
        "google-java-format",
        "ktlint",
        "prettier",
      },
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })
  end,
}
