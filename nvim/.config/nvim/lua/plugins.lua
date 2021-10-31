-- Plugin manager boilerplate
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Prelude, aka dependencies
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'

  -- Theme
  use 'rhysd/vim-color-spring-night'
  use 'EdenEast/nightfox.nvim'

  -- Surround
  use 'tpope/vim-surround'

  -- Status line
  use  { 'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- Snippets
  use 'l3mon4d3/luasnip'

  -- Telescope (fuzzy finder and more)
  use 'nvim-telescope/telescope.nvim'

  -- Better syntax highlighting
  use 'sheerun/vim-polyglot'
end)
