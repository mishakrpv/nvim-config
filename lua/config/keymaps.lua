local keymap = vim.keymap
local opts = {
    noremap = true,
    silent = true
}

keymap.set("n", "<leader>pv", vim.cmd.Ex, opts)
