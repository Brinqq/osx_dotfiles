require("harpoon")

--Aliases
local opt = {noremap = true, silent = true}
local km = vim.keymap.set


vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Copy to system clip board
km("v", "<leader>y", "\"+y")

--resize window
km("n", "<C-Up>", ":resize +2<CR>", opt)
km("n", "<C-Down>", ":resize -2<CR>", opt)
km("n", "<C-Left>", ":vertical resize +2<CR>", opt)
km("n", "<C-Right>", ":vertical resize -2<CR>", opt)

-- key optimization
km("n", "<n>", "nzzzv", opt)
km("n", "<N>", "Nzzzv", opt)
km("n", "C-d", "<C-d>zz", opt)
km("n", "C-u", "<C-u>zz", opt)
km("x", "<leader>p", "\"_dP", opt)
km("n", ".", "<cmd> noh<cr>", opt)

-- quick fix
km("n", "<M-;>", "<cmd> cnext<cr>", opt)
km("n", "<M-,>", "<cmd> cprevious<cr>", opt)
km("n", "<M-m>", "<cmd> ccl<cr>", opt)

--move visual block vertically and horizontaly
km("v", "J", ":m '>+1<CR>gv=gv")
km("v", "K", ":m '<-2<CR>gv=gv")
km("v", "H", "<gv", opt)
km("v", "L", ">gv", opt)

--quick replace current word

--imporved mark keybinds

-------Plugin maps-----------------

--Trouble
-- km("n", ".", function() require('trouble').toggle("document_diagnostics") end)


--telescope
km("n", "L", "<cmd> Telescope git_files <cr>", opt)
km("n", "<leader>ff", "<cmd> Telescope find_files <cr>", opt)
km("n", "<leader>fb", "<cmd> Telescope git_branches <cr>", opt)
km("n", "<leader>fk", "<cmd> Telescope keymaps <cr>", opt)
km("n", "<leader>fs", "<cmd> Telescope live_grep <cr>", opt)
km("n", "<leader>fc", "<cmd> Telescope colorscheme <cr>", opt)

--nvim-tree
km("n", "<leader>e",  ":NvimTreeToggle<cr>", opt)

--theme
km("n", "<leader>rb","<cmd> lua rb() <CR>", opt)

