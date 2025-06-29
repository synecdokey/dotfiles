return {
  'EdenEast/nightfox.nvim',
  priority = 1000,
  lazy = false,
  config = function()
    require('nightfox').setup()
    vim.api.nvim_create_autocmd('OptionSet', {
      pattern = 'background',
      callback = function()
        if vim.o.background == 'light' and vim.g.fox_theme ~= 'dayfox' then
          vim.g.fox_theme = 'dawnfox'
          vim.cmd.colorscheme('dawnfox')
        end
        if vim.o.background == 'dark' and vim.g.fox_theme ~= 'nightfox' then
          vim.g.fox_theme = 'terafox'
          vim.cmd.colorscheme('terafox')
        end
      end,
    })
  end,
}
