local km = vim.keymap.set
local opts = {noremap = true, silent = true}

local ui = require("dapui")
local dap = require("dap")

km("n", "<M-;>", function() ui.toggle() end)
km('n', '<M-p>', function() dap.continue() end, opts)
km('n', '<M-.>', function() dap.disconnect() end, opts)
km("n", "<M-b>", function() dap.toggle_breakpoint() end)
km('n', '<M-o>', function() dap.step_over() end, opts)
km('n', '<M-i>', function() dap.step_into() end, opts)
km('n', '<M-u>', function() dap.step_out() end, opts)

km('n', '<M-n>', '<Cmd>lua require("dapui").eval()<CR>', opts)
km('n', '<M-m>', function() ui.float_element("repl", {width = 160, height = 50, enter = true, position = "center", border = "rounded"}) end, opts)
km('n', '<M-[>', function()
  dap.repl.execute("disassemble") 
  ui.float_element("repl", {width = 160, height = 50, enter = true, position = "center", border = "rounded"})
end, opts)












