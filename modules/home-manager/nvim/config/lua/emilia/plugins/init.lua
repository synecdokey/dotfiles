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

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    cmd = {
      'TSInstall',
      'TSUninstall',
      'TSUpdate',
      'TSUpdateSync',
      'TSInstallInfo',
      'TSInstallSync',
      'TSInstallFromGrammar',
    },
    event = 'User FileOpened',
    dependencies = { 'nvim-treesitter-textobjects' },
  },

  -- Surround
  {
    'kylechui/nvim-surround',
    event = 'VeryLazy',
    config = true,
  },
  { 'nvim-treesitter/nvim-treesitter-textobjects', lazy = true },

  { 'nvim-tree/nvim-web-devicons', lazy = true, cond = not vim.g.vscode },

  -- Harpoon, advanced buffer navigation
  {
    'theprimeagen/harpoon',
    event = 'VeryLazy',
    dependencies = {
      'plenary.nvim',
    },
    cond = not vim.g.vscode,
  },

  -- Commenting stuff semantically
  {
    'numToStr/Comment.nvim',
    config = true,
  },

  ----  -- Copilot is a friend
  -- {
  --   'zbirenbaum/copilot.lua',
  --   event = 'VeryLazy',
  --   cmd = 'Copilot',
  --   config = true,
  -- },

  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
  },
}
