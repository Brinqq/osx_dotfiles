require("harpoon")

--Aliases
local opt = {noremap = true, silent = true}
local termOpts = {silent = true}
local km = vim.keymap.set


vim.g.mapleader = " "
vim.g.maplocalleader = ","

km("n", "<leader>pv", vim.cmd.Ex)


--resize window
km("n", "<C-Up>", ":resize +2<CR>", opt)
km("n", "<C-Down>", ":resize -2<CR>", opt)
km("n", "<C-Left>", ":vertical resize +2<CR>", opt)
km("n", "<C-Right>", ":vertical resize -2<CR>", opt)

-- key optimization
km("n", "<n>", "nzzzv", opt)
km("n", "<N>", "Nzzzv", opt)
km("n", "<C-d>", "<C-d>zz", opt)
km("n", "<C-u>", "<C-u>zz", opt)
km("i", "jk", "<ESC>", opt)
km("x", "<leader>p", "\"_dP", opt)

--move visual block vertically and horizontaly
km("v", "J", ":m '>+1<CR>gv=gv")
km("v", "K", ":m '<-2<CR>gv=gv")
km("v", "H", "<gv", opt)
km("v", "L", ">gv", opt)

--quick replace current word

-------Plugin maps-----------------

--Trouble
km("n", "<leader>xf", function() require('trouble').toggle("document_diagnostics") end)


--gitsigns

--telescope
km("n", "<C-p>", "<cmd> Telescope git_files <cr>", opt)
km("n", "<leader>ff", "<cmd> Telescope find_files <cr>", opt)
km("n", "<leader>fg", "<cmd> Telescope git_status <cr>", opt)
km("n", "<leader>fb", "<cmd> Telescope git_branches <cr>", opt)
km("n", "<leader>fk", "<cmd> Telescope keymaps <cr>", opt)
km("n", "<leader>fs", "<cmd> Telescope live_grep <cr>", opt)
km("n", "<leader>fc", "<cmd> Telescope colorscheme <cr>", opt)

--nvim-tree
km("n", "<leader>e",  ":NvimTreeToggle<cr>", opt)

