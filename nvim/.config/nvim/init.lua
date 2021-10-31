-- Remove netrw's top banner
vim.g.netrw_banner = 0

-- Set leader, needs to be defined asap to avoid mapping to default leader
vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', vim.g.mapleader, '', {noremap = true})
vim.api.nvim_set_keymap('v', vim.g.mapleader, '', {noremap = true})

-- True colours
vim.o.termguicolors = true

-- Set visible trailing and tab characters
vim.opt.list = true
vim.opt.listchars = { tab = '»·', trail = '·' }

-- Load all plugins
require('plugins')

-- Set theme
vim.cmd 'colorscheme nordfox'
