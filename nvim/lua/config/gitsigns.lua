local opt = {noremap = true, silent = true}

require('gitsigns').setup{
  signs = {
    delete = "-"
  };

  numhl = false,
}


function enableCustomGitDiff()
  -- vim.keymap.set("n", "<leader>d", ":Gitsigns toggle_deleted <CR>", opt)
  vim.cmd":Gitsigns toggle_deleted"
  vim.cmd":Gitsigns toggle_numhl"
  vim.cmd":Gitsigns toggle_signs"
  vim.cmd":Gitsigns toggle_linehl"
end

vim.keymap.set("n", "<leader>df","<cmd> lua enableCustomGitDiff() <CR>", opt)
-- vim.keymap.set("n", "<C-p>", ":Gitsigns toggle_linehl <CR>", opt)

