-- Remove netrw's top banner
vim.g.netrw_banner = 0

-- Set leader, needs to be defined asap to avoid mapping anything to the default
-- leader
vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', vim.g.mapleader, '', { noremap = true })
vim.api.nvim_set_keymap('v', vim.g.mapleader, '', { noremap = true })

-- Load all plugins
require('plugins')
