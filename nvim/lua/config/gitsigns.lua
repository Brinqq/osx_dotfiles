local opt = {noremap = true, silent = true}

require('gitsigns').setup{
  signs = {
    delete = "-"
  };

  numhl = false,
}

vim.keymap.set("n", "<leader>d", ":Gitsigns toggle_deleted <CR>", opt)
-- vim.keymap.set("n", "<C-p>", ":Gitsigns toggle_linehl <CR>", opt)

