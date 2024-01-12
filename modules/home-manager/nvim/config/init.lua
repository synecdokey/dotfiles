-- Remove netrw's top banner
vim.g.netrw_banner = 0

-- Set leader, needs to be defined asap to avoid mapping anything to the default
-- leader
vim.g.mapleader = ' '
-- Prevent default behaviour of space to move by one character like l
vim.keymap.set({ 'n', 'v' }, vim.g.mapleader, '<nop>')

-- Load all plugins
require('emilia')
