local dapui = require("dapui")

require("dapui").setup({
    layouts = {
        {
            elements = {
                -- Elements can be strings or table with id and size keys.
                {id = "scopes", size = 0.25},
                "breakpoints",
                "stacks",
                "watches"
            },
            size = 80, -- Set the width to 40 columns
            position = "left"
        },
        {
            elements = {
                "repl",
                "console"
            },
            size = 0.25, -- 25% of total lines
            position = "bottom"
        }
    }
})


local map = vim.api.nvim_set_keymap
local opts = { noremap=true, silent=true }

-- Toggle the DAP UI
map('n', '<leader>D', '<cmd>lua require"dapui".toggle()<CR>', opts)
