-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()
local nvlsp = require "nvchad.configs.lspconfig"

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {
  "html",
  "cssls",
  "rust_analyzer",
  -- "pylsp",
  "svelte",
  "ts_ls",
  -- "jedi_language_server",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

lspconfig.pyright.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off",
        -- extraPaths = { "./" },
        autoImportCompletions = true,
        autoSearchPaths = true,
        -- diagnosticMode = "workspace",
      },
    },
  },
}
