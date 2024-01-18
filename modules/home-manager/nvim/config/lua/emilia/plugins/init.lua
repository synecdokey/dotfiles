return {
  -- Source the plugin manager itself
  { 'folke/lazy.nvim', tag = 'stable' },
  {
    'nvim-lua/plenary.nvim',
    cmd = { 'PlenaryBustedFile', 'PlenaryBustedDirectory' },
  },

  -- Colorscheme
  {
    'EdenEast/nightfox.nvim',
    priority = 1000,
    lazy = false,
    config = function()
      require('nightfox').setup()
      vim.cmd.colorscheme('terafox')
    end,
    cond = not vim.g.vscode,
  },

  -- Surround
  {
    'kylechui/nvim-surround',
    event = 'VeryLazy',
    config = true,
  },

  { 'nvim-tree/nvim-web-devicons', lazy = true, cond = not vim.g.vscode },

  -- Commenting stuff semantically
  {
    'numToStr/Comment.nvim',
    config = true,
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
  },
}
