return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    dofile(vim.g.base46_cache .. "treesitter")
    require("nvim-treesitter.configs").setup()
  end,
}
