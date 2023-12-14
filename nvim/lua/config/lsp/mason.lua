local servers = {
 "lua_ls",
 "clangd"
}

require("mason").setup()
require("mason-lspconfig").setup()
local lspconfig = require("lspconfig")
local opts = {}

for _, server in pairs(servers) do
  opts = {
  on_attach = require("config.lsp.handler").on_attach,
  capabilities = require("config.lsp.handler").capabilities
  }

server = vim.split(server, "@")[1]
lspconfig[server].setup(opts)
end

