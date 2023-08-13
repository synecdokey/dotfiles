if vim.g.neovide then
  vim.keymap.set('n', '<c-z>', '<cmd>ToggleTerm<cr>')
  vim.keymap.set('t', '<c-z>', '<c-\\><c-n><cmd>ToggleTerm<cr>')
end
