-- leader key
vim.g.mapleader = " "

-- directory listing
vim.keymap.set("n", "<leader>l", vim.cmd.Ex)

-- drag selected line up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- append line below to end of current line with a space
vim.keymap.set("n", "J", "mzJ`z")

-- keey cursor vertically centered when scrolling half page at a time
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor vertically centered when cycling through search-keyword matches
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- preserve yanked contents when pasting over highlighted text
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yank into system clipboard
vim.keymap.set('v', '<leader>y', '"+y', { noremap = true, silent = true })
-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete and send deleted text to void register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- disable keybind for line editing mode
vim.keymap.set("n", "Q", "<nop>")

-- bind-key -r f run-shell "tmux neww ~/.local/bin/tmux-sessionizer"
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww ~/.scripts/tmux-sessionizer<CR>")

-- toggle visual output of [LSP, linter]. they are disabled by default in ./set.lua
vim.api.nvim_set_keymap('n', '<leader>L', '<cmd>lua vim.diagnostic.enable(not vim.diagnostic.is_enabled())<CR>', { noremap = true, silent = true })
