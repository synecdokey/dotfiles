local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugin manager boilerplate
return require('lazy').setup({
  -- Source the plugin manager itself
  { 'folke/lazy.nvim', tag = 'stable' },
  {
    'nvim-lua/plenary.nvim',
    lazy = true,
    cmd = { 'PlenaryBustedFile', 'PlenaryBustedDirectory' },
  },

  -- Colorscheme
  {
    'loctvl842/monokai-pro.nvim',
    priority = 1000,
    lazy = false,
    config = function()
      require('monokai-pro').setup()
      vim.cmd.colorscheme('monokai-pro')
    end,
  },

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
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
  },

  -- Surround
  { 'tpope/vim-surround', event = { 'BufReadPost', 'BufNewFile' } },

  -- Line plugin
  {
    'nvim-lualine/lualine.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-web-devicons' },
  },
  { 'nvim-tree/nvim-web-devicons', lazy = true },

  -- Snippets
  { 'l3mon4d3/luasnip', event = 'InsertEnter' },

  -- Completion
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      'nvim-lspconfig',
      'cmp-nvim-lsp',
      'cmp-buffer',
      'cmp-path',
      'cmp_luasnip',
    },
  },
  { 'neovim/nvim-lspconfig', lazy = true },
  { 'hrsh7th/cmp-nvim-lsp', lazy = true },
  { 'hrsh7th/cmp-buffer', lazy = true },
  { 'hrsh7th/cmp-path', lazy = true },
  { 'saadparwaiz1/cmp_luasnip', lazy = true },

  -- Telescope (fuzzy finder and more)
  {
    'nvim-telescope/telescope.nvim',
    lazy = true,
    cmd = 'Telescope',
    dependencies = { 'plenary.nvim' },
  },

  -- Harpoon, advanced buffer navigation
  {
    'theprimeagen/harpoon',
    event = 'VeryLazy',
    dependencies = {
      'plenary.nvim',
    },
  },

  -- Enhance lsp, since prettier & eslint don't play nice by default
  { 'jose-elias-alvarez/null-ls.nvim', lazy = true },
  { 'lewis6991/gitsigns.nvim', event = 'User FileOpened', cmd = 'Gitsigns' },

  -- Pretty lsp completion
  { 'onsails/lspkind-nvim', lazy = true },
})
