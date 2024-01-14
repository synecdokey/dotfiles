return {
  'lewis6991/gitsigns.nvim',
  event = { 'BufReadPost', 'BufNewFile', 'BufWritePre' },
  cmd = 'Gitsigns',
  cond = not vim.g.vscode,
  opts = {
    current_line_blame_opts = { delay = 200 },
  },
  keys = {
    {
      '<leader>gb',
      '<cmd>Gitsigns toggle_current_line_blame<cr>',
      desc = 'Blame line toggle',
    },
  },
}
