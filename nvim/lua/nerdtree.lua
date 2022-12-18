-- add keymap

local keymap = vim.keymap

keymap.set("n", "<leader>n", ":NERDTreeFocus<CR>")
keymap.set("n", "<C-n>", ":NERDTree<CR>")
keymap.set("n", "<C-t>", ":NERDTreeToggle<CR>")
keymap.set("n", "<C-f>", ":NERDTreeFind<CR>")
