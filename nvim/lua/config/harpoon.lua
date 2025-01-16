local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
--

--harpoon
vim.keymap.set("n","<leader>j", mark.add_file)
vim.keymap.set("n", "<leader>h", mark.rm_file)
vim.keymap.set("n", "<leader>g", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-k>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-l>", function() ui.nav_file(4) end)
vim.keymap.set("n", "<C-p>", function() ui.nav_file(5) end)
