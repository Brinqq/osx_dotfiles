vim.cmd("colorscheme kanagawa-paper")


---#const line numbers for consistent jumps
vim.cmd("highlight LineNr guifg=#d8631a")

function rb()
vim.api.nvim_set_hl(0, "Normal", { ctermfg = "NONE" })
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", {ctermfg = "NONE"} )
vim.api.nvim_set_hl(0, "FloatBorder", {bg = "none"} )
end
