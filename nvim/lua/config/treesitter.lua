local config = require "nvim-treesitter.configs"

config.setup{
  ensure_installed =  {"lua", "cpp", "org", "rust"},
  highlight = {
  enable = true,
  additional_vim_regex_highlighting = {'org'},
  disable = {"c"}
  },
}
