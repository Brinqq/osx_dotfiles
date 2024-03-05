local config = require "nvim-treesitter.configs"

config.setup{
  ensure_installed =  {"lua", "cpp", "rust"},
  highlight = {
  enable = true,
  disable = {"c"}
  },
}
