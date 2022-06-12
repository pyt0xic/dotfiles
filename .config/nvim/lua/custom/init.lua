-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.
local set = vim.opt -- set options
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4

-- Foxpro
vim.api.nvim_create_autocmd({"BufNewFile","BufRead"}, {
    pattern = {"*.prg"},
    command = "set syntax=foxpro",
})
