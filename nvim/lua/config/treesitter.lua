local config = require "nvim-treesitter.configs"

config.setup{
  ensure_installed =  {"c", "lua", "cpp", "org"},
  highlight = {
  enable = true,
  additional_vim_regex_highlighting = {'org'},
  disable = {"c"}
  },
}
