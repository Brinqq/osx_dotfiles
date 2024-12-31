require("dap")
vim.cmd("colorscheme posterpole")

--Const Highlights groups and colors due to some color schemes have weird colors.
--
local COLOR_ONE = "#ff5454"
local COLOR_TWO = "#E65100"
local COLOR_THREE = "#257DC3"
local COLOR_FOUR = "#ffffff"
local COLOR_FIVE = "#870087"
local COLOR_SIX = "#878700"


function Enable_const_colors()
  local sign = vim.fn.sign_define
  vim.cmd(string.format("exe 'highlight LineNr guifg=%s'", COLOR_ONE))
  vim.cmd(string.format("exe 'highlight DapUIDecoration guifg=%s'", COLOR_ONE))
  vim.cmd(string.format("exe 'highlight DapUIScope guifg=%s'", COLOR_ONE))
  vim.cmd(string.format("exe 'highlight DapUIType guifg=%s'", COLOR_ONE))
  vim.cmd(string.format("exe 'highlight DapUISource guifg=%s'", COLOR_ONE))
  vim.cmd(string.format("exe 'highlight DapUIVariable guifg=%s'", COLOR_TWO))
  vim.cmd(string.format("exe 'highlight DapUIFrameName guifg=%s'", COLOR_FOUR))
  vim.cmd(string.format("exe 'highlight DapUICurrentFrameName guifg=%s'", COLOR_THREE))
  vim.cmd(string.format("exe 'highlight DapUIModifiedValue guifg=%s'", COLOR_THREE))
  vim.cmd(string.format("exe 'highlight DapUILineNumber guifg=%s'", COLOR_FOUR))
  vim.cmd(string.format("exe 'highlight DapUIValue guifg=%s'", COLOR_FOUR))
  vim.cmd(string.format("exe 'highlight DapUIThread guifg=%s'", COLOR_THREE))
  vim.cmd(string.format("exe 'highlight DapUIStoppedThread guifg=%s'", COLOR_FOUR))

  vim.api.nvim_set_hl(0, 'DapBreakpointStoppedSymbol', {fg = COLOR_TWO, bold=true})
  vim.api.nvim_set_hl(0, 'DapBreakpoint', {fg = COLOR_TWO, bold=true})
  sign('DapStopped', { text='', texthl='DapBreakpointStoppedSymbol', linehl='', numhl=''})
  sign('DapBreakpoint', {text= "B", texthl='DapBreakpoint',})
end




Enable_const_colors()




vim.keymap.set("n", "<leader>fc", function() vim.cmd("Telescope colorscheme") end, {noremap = true}, {silent = true})
