local dap = require('dap')

dap.adapters.python = {
  type = 'executable';
  command = 'python3';
  args = { '-m', 'debugpy.adapter' };
}

dap.configurations.python = {
  {
    type = 'python';
    request = 'launch';
    name = "Launch file";
    program = "${file}";
  },
}

local map = vim.api.nvim_set_keymap
local opts = { noremap=true, silent=true }

-- Set breakpoints, continue, step over, step into, etc.
map('n', '<F1>', '<cmd>lua require"dap".toggle_breakpoint()<CR>', opts)
map('n', '<F2>', '<cmd>lua require"dap".continue()<CR>', opts)
map('n', '<F3>', '<cmd>lua require"dap".step_over()<CR>', opts)
map('n', '<F4>', '<cmd>lua require"dap".step_into()<CR>', opts)
map('n', '<F5>', '<cmd>lua require"dap".step_out()<CR>', opts)
map('n', '<F6>', '<cmd>lua require"dap".pause()<CR>', opts)
map('n', '<F7>', '<cmd>lua require"dap".restart()<CR>', opts)
map('n', '<F8>', '<cmd>lua require"dap".terminate()<CR>', opts)
