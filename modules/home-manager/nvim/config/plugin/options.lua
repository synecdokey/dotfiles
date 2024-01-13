local opt = vim.opt

-- Global settings
-- True colours
vim.o.termguicolors = true
-- -- Don't wrap lines, let the long lines stand out in their horribleness
opt.wrap = false
-- -- Display line numbers relative to current line
opt.relativenumber = true
-- -- Display current line number
opt.number = true
-- -- Show matching brackets
opt.showmatch = true
-- -- Mode is already shown in the statusbar, hide it in the cmdline
opt.showmode = false
-- -- Highlight the 80th character, to know if I need to start refactoring
opt.colorcolumn = '80'
-- -- Open vertical splits to the right
opt.splitright = true
-- -- GUI font
opt.guifont = 'Comic Code:h16'
-- -- GUI line height
opt.linespace = 11
-- Mouse support, useful for pairing (and resizing splits)
opt.mouse = 'a'

-- Set visible trailing and tab characters
opt.list = true
opt.listchars = { tab = '»·', trail = '·' }

-- Tab settings
-- -- Convert tabs to spaces (use ^V<Tab> to avoid the conversion)
opt.expandtab = true
-- -- Display tabs as 2 columns-long
opt.tabstop = 2
-- -- Convert tabs to 2 spaces (thanks to expandtab)
opt.softtabstop = 2
-- -- Reindent operations are 2 spaces-long
opt.shiftwidth = 2
