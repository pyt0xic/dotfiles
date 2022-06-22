-- Just an example, supposed to be placed in /lua/custom/

local M = {}
-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "catppuccin",
   transparency = "true",
}

M.plugins = {
    user = require "custom.plugins",
    options = {
        lspconfig = {
            setup_lspconf = "custom.plugins.lspconfig",
        },
    },
    override = {
        ["hrsh7th/nvim-cmp"] = {
            sources = {
                { name = "copilot", group_index = 2 },
                { name = "nvim_lsp", group_index = 2 },
                { name = "path", group_index = 2 },
                { name = "luasnip", group_index = 2 },
	    	    { name = "buffer", group_index = 2 },
            },
        },
    },
}
return M
