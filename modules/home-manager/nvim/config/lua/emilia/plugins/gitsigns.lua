return {
  'lewis6991/gitsigns.nvim',
  event = 'User FileOpened',
  cmd = 'Gitsigns',
  cond = not vim.g.vscode,
  opts = {
    current_line_blame_opts = { delay = 200 },
  },
  config = function(_, opts)
    require('gitsigns').setup(opts)
    vim.keymap.set(
      'n',
      '<leader>gb',
      '<cmd>Gitsigns toggle_current_line_blame<cr>'
    )
  end,
}
