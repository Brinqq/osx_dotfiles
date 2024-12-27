local ui = require("dapui")
local dap = require("dap")

local config = {
    layouts = {

      {
        elements = { {id = "scopes", size = 0.5}, {id = "watches", size = 0.5} },
        position = "right",
        size = 60,
      },


    }

}



ui.setup(config)


dap.listeners.before.attach.dapui_config = function()
  -- ui.open()
end

dap.listeners.before.launch.dapui_config = function()
  -- ui.open()
end

dap.listeners.before.event_terminated.dapui_config = function()
  ui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  ui.close()
end

