local dap = require "dap"

dap.adapters.python = {
  type = 'executable',
  command = '/usr/bin/python3',  -- Replace this with the actual output of `which python3`
  args = { '-m', 'debugpy.adapter' },
}

dap.configurations.python = {
  {
    -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options
    type = 'python',
    request = 'launch',
    name = "Launch Current File",
    program = "${file}",
    pythonPath = function()
      -- Adjust the following path according to your actual Python3 path
      local executable = '/usr/bin/python3'  -- Replace this with the actual output of `which python3`
      return executable
    end,
  },
}
