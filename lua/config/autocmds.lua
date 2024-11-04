local function augroup(name)
    return vim.api.nvim_create_augroup("sosal_" .. name, {
        clear = true
    })
end

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    group = augroup("highlight_yank"),
    callback = function()
        (vim.hl or vim.highlight).on_yank()
    end
})

-- Fix conceallevel for json files
vim.api.nvim_create_autocmd({"FileType"}, {
    group = augroup("json_conceal"),
    pattern = {"json", "jsonc", "json5"},
    callback = function()
        vim.opt_local.conceallevel = 0
    end
})
