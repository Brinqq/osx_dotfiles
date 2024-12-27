local dap = require("dap")
local ui = require('dapui')

local mason_bin = vim.fn.stdpath('data') .. '/mason/bin/'

dap.adapters.lldb = {
    type = "executable",
    command = mason_bin .. "codelldb",
    name = "lldb"
}

dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    env = {
      DYLD_LIBRARY_PATH=vim.fn.expand("~").. "/programming/vulkan/macOS/lib",
     VK_ICD_FILENAMES=vim.fn.expand("~").. "/programming/vulkan/macOS/share/vulkan/icd.d/MoltenVK_icd.json",
     VK_LAYER_PATH=vim.fn.expand("~").. "/programming/vulkan/macOS/share/vulkan/explicit_layer.d",

    
    },

  },
}

