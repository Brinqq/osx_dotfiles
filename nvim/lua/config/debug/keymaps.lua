local km = vim.keymap.set
local opts = {noremap = true, silent = true}

local ui = require("dapui")
local dap = require("dap")
local server = require("config.debug.servers")

km("n", "<M-n>", function() ui.toggle() end)
km('n', '<M-0>', function() dap.continue() end, opts)
km('n', '<M-+>', function() dap.pause() end, opts)
km('n', '<M-->', function() dap.disconnect() end, opts)
km("n", "<M-b>", function() dap.toggle_breakpoint() end)
km('n', '<M-o>', function() dap.step_over() end, opts)
km('n', '<M-i>', function() dap.step_into() end, opts)
km('n', '<M-u>', function() dap.step_out() end, opts)
km('n', '<M-j>', function() dap.up() end, opts)
km('n', '<M-k>', function() dap.down() end, opts)
km('n', '<M-m>', function() ui.float_element("repl", {width = 160, height = 50, enter = true, position = "center", border = "rounded"}) end, opts)
km('n', '<M-y>', function() ui.float_element("breakpoints", {width = 100, height = 30, enter = true, position = "center", border = "rounded"}) end, opts)
km('n', '<M-/>', function() ui.float_element("watches", {width = 100, height = 30, enter = true, position = "center", border = "rounded"}) end, opts)

km('n', '<M-l>', function() ui.eval() end, opts)
km('v', '<M-l>', function() ui.eval() end, opts)


km('n', '<m-,>', function()
  local l = vim.fn.expand('<cword>')
  local decimal_value = vim.fn.str2nr(l, 16)
  print(decimal_value)

end, opts)



km('n', '<M-9>', function()
  local compile = Get_debug_settings().compile
    if(compile ~= nil) then
      vim.fn.system("./".. compile)
      if(vim.v.shell_error ~= 0) then
        print("compilation error!")
        goto skip;
      end
      dap.continue()
    else 
      print("Compile Script = nil")
    end
    ::skip::
  end, opts)


km('n', '<M-d>', function()
  dap.repl.execute("disassemble")
  ui.float_element("repl", {width = 160, height = 50, enter = true, position = "center", border = "rounded"})
end, opts)













