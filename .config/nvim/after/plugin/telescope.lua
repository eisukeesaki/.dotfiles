local builtin = require('telescope.builtin')

_G.find_hidden_files = function()
    require('telescope.builtin').find_files({
        find_command = {"rg", "--files", "--hidden", "--glob", "!**/.git/*"}
    })
end

vim.keymap.set('n', '<leader>f.', ':lua _G.find_hidden_files()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>grl', builtin.live_grep, {})
vim.keymap.set('n', '<leader>grs', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-d>"] = "delete_buffer",
        ["<C-h>"] = "which_key",
      },
    }
  },
}

