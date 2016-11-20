" Global settings
" " Keep things improved (noop in neovim)
set nocompatible
" " Display line numbers
set number
" " Syntax highlighting (on by default in neovim)
syntax on
" " Show matching brackets
set showmatch

" Search Settings
" " Move cursor while searching
set incsearch
" " Highlight search matches
set hlsearch

" Tab settings
" " Convert tabs to spaces (use ^V<Tab> to avoid the conversion)
set expandtab
" " Display tabs as 4 columns-long
set tabstop=4
" " Convert tabs to 4 spaces (thanks to expandtab)
set softtabstop=4
" " Reindent operations are 4 spaces-long
set shiftwidth=4
" " Do not replace tabs in Makefiles
autocmd FileType make setlocal noexpandtab

" Keybindings
" " Remap arrow keys to split navigation
noremap <Left> :wincmd h<CR>
noremap <Down> :wincmd j<CR>
noremap <Up> :wincmd k<CR>
noremap <Right> :wincmd l<CR>

" Source Plugins
source $HOME/dotfiles/plugins.vim
