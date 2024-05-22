-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  "rust_analyzer",
  -- "pylsp",
  "pyright",
  "rust_analyzer",
  -- "jedi_language_server",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

lspconfig.pyright.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
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
--
-- lspconfig.pylsp.setup {
--   plugins = {
--     jedi = {
--       autoImportCompletions = true,
--     },
--   },
-- }
