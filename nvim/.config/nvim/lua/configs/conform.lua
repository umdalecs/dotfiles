local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    go = { "goimports", "golines", "gofmt" },
  },

  formatters = {
    golines = {
      prepend_args = { "--max-len=80" },
    },
  },

  format_on_save = function(bufnr)
    local ft = vim.bo[bufnr].filetype

    local allowed = {
      go = true,
      lua = true,
    }

    if allowed[ft] then
      return { timeout_ms = 1000, lsp_fallback = false }
    end

    return nil
  end,
}

return options
