require("nvchad.configs.lspconfig").defaults()

local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = vim.lsp.config

local servers = {
  "html",
  "cssls",
  "gopls",
  "jdtls",
  "kotlin_language_server",
}

lspconfig.gopls.setup = {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = vim.fs.find { "go.work", "go.mod", ".git" },
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

lspconfig.jdtls.setup = {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.kotlin_language_server.setup = {}
lspconfig.html.setup = {}
lspconfig.emmet_language_server.setup = {}
lspconfig.kotlin_language_server.setup = {}

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
