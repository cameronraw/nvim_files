require("mason").setup();

local dap, dapui = require("dap"), require("dapui")

dapui.setup()

-- dap.listeners.after.event_initialized["dapui_config"] = function()
--   dapui.open()
-- end
-- dap.listeners.before.event_terminated["dapui_config"] = function()
--   dapui.close()
-- end
-- dap.listeners.before.event_exited["dapui_config"] = function()
--   dapui.close()
-- end

vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>");
vim.keymap.set("n", "<F11>", ":lua require'dap'.step_into()<CR>");
vim.keymap.set("n", "<F12>", ":lua require'dap'.step_out()<CR>");
vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>");
vim.keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>");
vim.keymap.set("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>");
vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>");
