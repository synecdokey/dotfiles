-- Keybindings
--- Remap arrow keys to split navigation
vim.keymap.set({ 'n', 'v' }, '<Left>', '<cmd>wincmd h<cr>')
vim.keymap.set({ 'n', 'v' }, '<Down>', '<cmd>wincmd j<cr>')
vim.keymap.set({ 'n', 'v' }, '<Up>', '<cmd>wincmd k<cr>')
vim.keymap.set({ 'n', 'v' }, '<Right>', '<cmd>wincmd l<cr>')
--- Disable ex-mode
vim.keymap.set('', 'Q', '<nop>')
if vim.g.neovide then
  --- Copy/paste in neovide
  vim.keymap.set('v', '<d-c>', '"+y')
  vim.keymap.set({ 'n', 'v' }, '<d-v>', '"+P')
  vim.keymap.set('c', '<d-v>', '<c-r>+')
  vim.keymap.set('i', '<d-v>', '<esc>l"+Pli')
  --- Scale shortcuts for presentations
  vim.g.neovide_scale_factor = 1.0
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set('n', '<c-=>', function()
    change_scale_factor(1.25)
  end)
  vim.keymap.set('n', '<c-->', function()
    change_scale_factor(1 / 1.25)
  end)
end
