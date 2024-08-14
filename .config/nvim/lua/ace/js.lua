vim.api.nvim_create_autocmd("FileType", {
    pattern = "javascript",
    callback = function()
        vim.opt_local.shiftwidth = 4
        vim.opt_local.tabstop = 4
        -- Modify formatoptions to remove 'r' and 'o', and potentially other options
        vim.opt_local.formatoptions:remove('r')
        vim.opt_local.formatoptions:remove('o')
        vim.opt_local.formatoptions:remove('t')
        vim.opt_local.formatoptions:remove('c')
        -- Ensure no auto indentation
        vim.opt_local.autoindent = false
        vim.opt_local.smartindent = false
        vim.opt_local.cindent = false
    end,
})

