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
  {
    'nvim-lualine/lualine.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-web-devicons' },
    cond = not vim.g.vscode,
  },
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

  -- Telescope (fuzzy finder and more)
  {
    'nvim-telescope/telescope.nvim',
    lazy = true,
    cmd = 'Telescope',
    dependencies = { 'plenary.nvim' },
    cond = not vim.g.vscode,
    opts = { defaults = { prompt_prefix = ' ' } },
  },

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

  -- Better terminal integration, needed in neovide
  {
    'akinsho/toggleterm.nvim',
    opts = {
      shell = 'fish',
      on_open = function()
        vim.cmd('startinsert!')
      end,
    },
    cond = vim.g.neovide,
  },

  -- Enhance lsp, since prettier & eslint don't play nice by default
  { 'jose-elias-alvarez/null-ls.nvim', lazy = true, cond = not vim.g.vscode },
  {
    'lewis6991/gitsigns.nvim',
    event = 'User FileOpened',
    cmd = 'Gitsigns',
    cond = not vim.g.vscode,
    opts = {
      current_line_blame_opts = { delay = 200 },
    },
  },

  -- Copilot is a friend
  {
    'zbirenbaum/copilot.lua',
    event = 'VeryLazy',
    cmd = 'Copilot',
    config = true,
  },

  -- Better TS experience than typescript-language-server
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'plenary.nvim', 'nvim-lspconfig' },
    config = true,
  },
})
