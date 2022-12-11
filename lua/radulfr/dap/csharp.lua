local M = {}

-- Debugger installation location
local HOME = os.getenv "HOME"
local DEBUGGER_LOCATION = HOME .. "/.local/share/nvim/netcoredbg"

function M.setup()
  local dap = require "dap"

  -- Adapter configuration
  dap.adapters.coreclr = {
    type = "executable",
    command = DEBUGGER_LOCATION .. "/netcoredbg",
    args = { "--interpreter=vscode" },
  }

  -- Configuration
  dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        local project_name = vim.fn.input('Project name: ');
        return vim.fn.input('Path to dll > ', vim.fn.getcwd() .. '/' .. project_name .. '/bin/Debug/net6.0/' .. project_name .. '.dll', 'file')
    end,
  },
}
end

return M
