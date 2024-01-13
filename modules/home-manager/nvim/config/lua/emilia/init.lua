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
return require('lazy').setup('emilia.plugins', {
  defaults = { lazy = true },
  rtp = {
    disabled_plugins = {
      'gzip',
      'tarPlugin',
      'toHtml',
      'tutor',
      'zipPlugin',
    },
  },
})
