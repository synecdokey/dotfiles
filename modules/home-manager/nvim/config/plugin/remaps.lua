-- Keybindings
--- Remap arrow keys to split navigation
vim.keymap.set({ 'n', 'v' }, '<Left>', '<cmd>wincmd h<cr>')
vim.keymap.set({ 'n', 'v' }, '<Down>', '<cmd>wincmd j<cr>')
vim.keymap.set({ 'n', 'v' }, '<Up>', '<cmd>wincmd k<cr>')
vim.keymap.set({ 'n', 'v' }, '<Right>', '<cmd>wincmd l<cr>')
--- netrw but easier
vim.keymap.set({ 'n', 'v' }, '<leader>e', '<cmd>Explore<cr>')
--- System clipboard copy/paste
vim.keymap.set('v', '<d-c>', '"+y')
--- Disable ex-mode
vim.keymap.set('', 'Q', '<nop>')
