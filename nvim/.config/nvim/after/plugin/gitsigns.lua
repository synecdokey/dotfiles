if not vim.g.vscode then
  vim.keymap.set(
    'n',
    '<leader>gb',
    '<cmd>Gitsigns toggle_current_line_blame<cr>'
  )
end
