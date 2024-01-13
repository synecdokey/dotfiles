return {
  -- Source the plugin manager itself
  { 'folke/lazy.nvim', tag = 'stable' },
  {
    'nvim-lua/plenary.nvim',
    lazy = true,
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

  -- Line plugin
  { 'nvim-tree/nvim-web-devicons', lazy = true, cond = not vim.g.vscode },

  -- Snippets
  { 'l3mon4d3/luasnip', event = 'InsertEnter', cond = not vim.g.vscode },

  -- Completion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'nvim-lspconfig',
      'cmp-nvim-lsp',
      'cmp-buffer',
      'cmp_luasnip',
    },
    cond = not vim.g.vscode,
  },
  { 'neovim/nvim-lspconfig', lazy = true, cond = not vim.g.vscode },
  { 'hrsh7th/cmp-nvim-lsp', lazy = true, cond = not vim.g.vscode },
  { 'hrsh7th/cmp-buffer', lazy = true, cond = not vim.g.vscode },
  { 'saadparwaiz1/cmp_luasnip', lazy = true, cond = not vim.g.vscode },

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

  -- Enhance lsp, since prettier & eslint don't play nice by default
  { 'jose-elias-alvarez/null-ls.nvim', lazy = true, cond = not vim.g.vscode },

  -- Copilot is a friend
  {
    'zbirenbaum/copilot.lua',
    event = 'VeryLazy',
    cmd = 'Copilot',
    config = true,
  },

  {
    'windwp/nvim-autopairs',
    config = true,
  },

  -- Better TS experience than typescript-language-server
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'plenary.nvim', 'nvim-lspconfig' },
    config = true,
  },
}
