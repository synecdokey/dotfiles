" Global settings
" " Keep things improved (noop in neovim)
set nocompatible
" " Don't wrap lines, let the long lines stand out in their horribleness
set nowrap
" " Display line numbers
set number
" " Relative numbers
set relativenumber
" " Syntax highlighting (on by default in neovim)
syntax on
" " Show matching brackets
set showmatch
" " Mode is already shown in the statusbar, hide it
set noshowmode
" " Enable mouse handling, for pairing situations
set mouse=a
" " Highlight the 80th character, to know if I need to start refactoring
set colorcolumn=80
" " Open vertical splits to the right
set splitright

" Search Settings
" " Move cursor while searching
set incsearch
" " Highlight search matches
set hlsearch

" Tab settings
" " Convert tabs to spaces (use ^V<Tab> to avoid the conversion)
set expandtab
" " Display tabs as 2 columns-long
set tabstop=2
" " Convert tabs to 2 spaces (thanks to expandtab)
set softtabstop=2
" " Reindent operations are 2 spaces-long
set shiftwidth=2

" Completion
set completeopt=menuone,noselect
