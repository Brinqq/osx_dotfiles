local config = require "nvim-treesitter.configs"

config.setup{
  ensure_installed =  {"lua", "cpp", "rust", "c_sharp"},
  highlight = {
  enable = true,
  disable = {"c"}
  },
}
