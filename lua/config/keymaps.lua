local keymap = vim.keymap


local opts = {noremap = true, silent = true}

-- Directory Navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", opts)
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>", opts)

-- Pane Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right

-- Window Management
keymap.set("n", "<leader>sv", ":visplit<CR>", opts) -- split vertically
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- split horizontally
keymap.set("n", "<leader>sm", "MaximizerToggle<CR>", opts) -- Toggle Minimise

-- COPY PASTE
keymap.set("n", '<C-c>', '"+y', opts) -- Bind Ctrl+C to copy to clipboard
keymap.set("n", '<C-v>', '"+p', opts) -- Bind Ctrl+V to paste from clipboard

keymap.set("v", '<C-v>', '"+y', opts) -- Bind Ctrl+C to copy to clipboard in visual mode
keymap.set("x", '<C-v>', '"+p', opts) -- Bind Ctrl+V to paste from clipboard in visual mode
