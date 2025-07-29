return {
  'neanias/everforest-nvim',
  name = 'everforest',
  lazy = false,
  priority = 1000,
  config = function()
    require('everforest').setup({
      transparent_background_level = 2,
      on_highlights = function(hl, p)
        hl.gitcommitOverflow = { bg = p.red }
      end,
    })
    vim.cmd.colorscheme('everforest')
  end,
}
