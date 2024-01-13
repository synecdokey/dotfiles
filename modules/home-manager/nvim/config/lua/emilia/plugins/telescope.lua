-- Telescope (fuzzy finder and more)
return {
  'nvim-telescope/telescope.nvim',
  lazy = true,
  cmd = 'Telescope',
  dependencies = { 'plenary.nvim' },
  cond = not vim.g.vscode,
  opts = { defaults = { prompt_prefix = ' ' } },
  keys = {
    { '<leader>p', '<cmd>Telescope git_files<cr>', desc = 'Search git files' },
    { '<leader>ff', '<cmd>Telescope grep_string<cr>', desc = 'Find files' },
  },
}
