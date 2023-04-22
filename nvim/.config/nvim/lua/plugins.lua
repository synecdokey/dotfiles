-- Plugin manager boilerplate
return require('packer').startup(function(use)
  use('wbthomason/packer.nvim')

  -- Prelude, aka dependencies
  use('nvim-lua/popup.nvim')
  use('nvim-lua/plenary.nvim')

  -- Theme
  use({
    'loctvl842/monokai-pro.nvim',
    config = function()
      require('monokai-pro').setup()
    end,
  })

  -- Surround
  use('tpope/vim-surround')

  -- Status line
  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
  })

  -- Snippets
  use('l3mon4d3/luasnip')

  -- Code completion
  use({
    'hrsh7th/nvim-cmp',
    requires = {
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
    },
  })

  -- Telescope (fuzzy finder and more)
  use('nvim-telescope/telescope.nvim')

  -- Harpoon, advanced buffer navigation
  use('theprimeagen/harpoon')

  -- Enhance lsp, since prettier & eslint don't play nice by default
  use('jose-elias-alvarez/null-ls.nvim')

  -- Git integration
  use({
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
    },
  })

  -- Pretty lsp completion
  use('onsails/lspkind-nvim')

  -- Treesitter integration
  use({
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  })
end)
