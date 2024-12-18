local defaultServers = {
 "clangd",
 "rust_analyzer",
 "pyright",
 "bashls",
 "glsl_analyzer",
 "asm_lsp"
}

require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require("lspconfig")
local m = require"mason-lspconfig"
local opts = {}

m.setup{
  ensure_installed = {
    "clangd", "rust_analyzer", "lua_ls", "pyright", "cmake", "cssls"
  },
  automatic_install = true,
}

for _, server in pairs(defaultServers) do opts = {
  on_attach = require("config.lsp.handler").on_attach,
  capabilities = require("config.lsp.handler").capabilities
  }

server = vim.split(server, "@")[1]
lspconfig[server].setup(opts)
end

-- Manuel lsp server setups

lspconfig.bashls.setup{
  on_attach = require("config.lsp.handler").on_attach,
  capabilities = require("config.lsp.handler").capabilities,
  settings = {}
}

lspconfig.lua_ls.setup{
  on_attach = require("config.lsp.handler").on_attach,
  capabilities = require("config.lsp.handler").capabilities,
  settings = {
    ['lua-language-server'] = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        bibrary = vim.api.nvim_get_runtime_file("", true),
      },
    },
  },
}

