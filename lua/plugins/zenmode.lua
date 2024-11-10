return {
  "folke/zen-mode.nvim",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function(_, opts)
    local zenmode = require "zen-mode"
    zenmode.setup(opts)
  end,
}
