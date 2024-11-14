return {
  "olexsmir/gopher.nvim",
  lazy = false,
  ft = "go",
  build = function()
    vim.cmd.GoInstallDeps()
  end,
  ---@type gopher.Config
  opts = {},
}
