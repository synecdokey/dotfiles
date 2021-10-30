-- Remove netrw's top banner
vim.g.netrw_banner = 0

-- True colours
vim.o.termguicolors = true

-- Set visible trailing and tab characters
vim.opt.list = true
vim.opt.listchars = { tab = '»·', trail = '·' }

-- Load all plugins
require('plugins')

-- Set theme
vim.cmd 'colorscheme nordfox'
