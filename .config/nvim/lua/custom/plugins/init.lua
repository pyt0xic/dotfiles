-- custom/plugins/init.lua

return {

   ["zbirenbaum/copilot.lua"] = {
       event = {"VimEnter"},
       config = function()
           vim.defer_fn(function()
               require("copilot").setup {
                    cmp = {
                      enabled = true,
                      method = "getPanelCompletions",
                    },
                    panel = { -- no config options yet
                      enabled = true,
                    },
                    ft_disable = {},
                    plugin_manager_path = vim.fn.stdpath("data") .. "/site/pack/packer",
                    server_opts_overrides = {},
               }
           end, 100)
       end,
   },

   ["zbirenbaum/copilot-cmp"] = {
       -- after = { "copilot.lua", "nvim-cmp" },
       module = "copilot_cmp",
   },

   ["wakatime/vim-wakatime"] = {},

}
