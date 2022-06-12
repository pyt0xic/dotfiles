-- custom/plugins/init.lua

return {

   ["zbirenbaum/copilot.lua"] = {
       event = {"VimEnter"},
       config = function()
           vim.defer_fn(function()
               require("copilot").setup()
           end, 100)
       end,
   },

   ["zbirenbaum/copilot-cmp"] = {
        after = { "copilot.lua", "nvim-cmp" },
   }
}
