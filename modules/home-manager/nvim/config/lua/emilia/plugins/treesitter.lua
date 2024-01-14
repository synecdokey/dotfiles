return {
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
  event = 'VeryLazy',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = 'all',
      ignore_install = { 'phpdoc' },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    })
  end,
}
