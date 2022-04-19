-- Keybindings
--- Remap arrow keys to split navigation
vim.keymap.set({ 'n', 'v' }, '<Left>', '<cmd>wincmd h<cr>')
vim.keymap.set({ 'n', 'v' }, '<Down>', '<cmd>wincmd j<cr>')
vim.keymap.set({ 'n', 'v' }, '<Up>', '<cmd>wincmd k<cr>')
vim.keymap.set({ 'n', 'v' }, '<Right>', '<cmd>wincmd l<cr>')
--- Disable ex-mode
vim.keymap.set('', 'Q', '<nop>')
