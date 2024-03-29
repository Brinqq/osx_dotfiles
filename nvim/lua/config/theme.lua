vim.cmd("colorscheme srcery")
function rb()
vim.api.nvim_set_hl(0, "Normal", { ctermfg = "NONE" })
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", {ctermfg = "NONE"} )
vim.api.nvim_set_hl(0, "FloatBorder", {bg = "none"} )
end
rb()
