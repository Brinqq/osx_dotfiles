tree = require "nvim-tree"

tree.setup({

  filters = {
    git_ignored = false, 
  },

  actions = {
      open_file = { quit_on_open = true,},
  },

})
