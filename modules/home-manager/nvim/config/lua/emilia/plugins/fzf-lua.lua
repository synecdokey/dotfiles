-- fzf-lua (fuzzy finder and more)
-- Mostly a drop-in replacement for telescope,
return {
  'ibhagwan/fzf-lua',
  -- optional for icon support
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  keys = {
    {
      '<leader>p',
      function()
        require('fzf-lua').git_files()
      end,
      desc = 'Search git files',
    },
    {
      '<leader>fg',
      '<cmd>Fzflua grep_visual<cr>',
      desc = 'Search visual selection',
    },
  },
}
