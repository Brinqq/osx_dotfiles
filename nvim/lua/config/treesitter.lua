local config = require "nvim-treesitter.configs"

config.setup{
  ensure_installed =  {},
  highlight = {
  enable = true,
  disable = {"c"}
  },
}
