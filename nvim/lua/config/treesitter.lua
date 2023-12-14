local config = require "nvim-treesitter.configs"

config.setup{
  ensure_installed =  {"c", "lua", "cpp"},
  highlight = {
  enable = true,
  disable = {"c"}
  },
}
