local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"
   local omnisharp_bin = "/usr/bin/omnisharp"
   local pid = vim.fn.getpid()

   -- lspservers with default config
   local servers = { "html", "cssls", "clangd", "marksman", "omnisharp" }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
      }
   end
    lspconfig["omnisharp"].setup {
        cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) },
    }
end

return M
