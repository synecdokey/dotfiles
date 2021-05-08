-- Plugin manager boilerplate
vim.cmd 'packadd paq-nvim'
local paq = require'paq-nvim'.paq
paq 'savq/paq-nvim'

-- Dependencies
paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'

-- Theme
paq 'rhysd/vim-color-spring-night'

-- Surround
paq 'tpope/vim-surround'

-- Status line
paq 'itchyny/lightline.vim'

-- Telescope (fuzzy finder and more)
paq 'nvim-telescope/telescope.nvim'

-- Code completion
paq 'neovim/nvim-lspconfig'
paq 'hrsh7th/nvim-compe'
