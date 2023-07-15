if not vim.g.vscode then
  vim.keymap.set('n', '<leader>p', '<cmd>Telescope git_files<cr>')
  vim.keymap.set('n', '<leader>ff', '<cmd>Telescope grep_string<cr>')
end
