require "nvchad.mappings"

local map = vim.keymap.set

-- Harpoon
local harpoon = require "harpoon"

map("n", "<leader>a", function()
  harpoon:list():add()
end)
map("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

map("n", "<leader>[", function()
  harpoon:list():select(1)
end)
map("n", "<leader>]", function()
  harpoon:list():select(2)
end)
map("n", "<leader>;", function()
  harpoon:list():select(3)
end)
map("n", "<leader>'", function()
  harpoon:list():select(4)
end)

-- Toggle previous & next buffers stored within Harpoon list
map("n", "<leader>,", function()
  harpoon:list():prev()
end)
map("n", "<leader>.", function()
  harpoon:list():next()
end)

-- Zen Mode
map("n", "<leader>zz", function()
  require("zen-mode").toggle()
end)

map("n", ";", ":", { desc = "CMD enter command mode" })
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
