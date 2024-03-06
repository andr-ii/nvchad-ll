local config = require("plugins.configs.lspconfig")
local on_attach = config.on_attach
local capabilities = config.capabilities

local lsp_config = require('lspconfig')

lsp_config.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true
    }
  },
  root_dir = require('lspconfig.util').root_pattern('.git')
}

