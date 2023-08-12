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
  vim.keymap.set('v', '<D-c>', '"+y')
  vim.keymap.set('n', '<D-v>', '"+P')
  vim.keymap.set('v', '<D-v>', '"+P')
  vim.keymap.set('c', '<D-v>', '<C-R>+')
  vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli')
  --- Scale shortcuts for presentations
  vim.g.neovide_scale_factor = 1.0
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set('n', '<C-=>', function()
    change_scale_factor(1.25)
  end)
  vim.keymap.set('n', '<C-->', function()
    change_scale_factor(1 / 1.25)
  end)
end
