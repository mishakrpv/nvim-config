return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      styles = {
        bold = true,
        italic = true,
        transparency = true
      }
    },
    config = function(_, opts)
      require("rose-pine").setup(opts)
      -- vim.cmd.colorscheme("rose-pine")
    end
  },
  {
    "qaptoR-nvim/chocolatier.nvim",
    priority = 1000,
    config = function()
      require("chocolatier").setup {}
      vim.cmd.colorscheme("chocolatier")
    end
  }
}
