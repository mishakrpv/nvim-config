return {
  "stevearc/conform.nvim",
  event = "BufWritePre",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      css = { "prettier" },
      html = { "prettier" },
      rust = {
        "rustfmt",
        lsp_format = "fallback"
      },
      go = { "goimports", "gofmt", }
    },

    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true
    }
  }
}
