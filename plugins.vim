call plug#begin('~/.vim/plugged')

" Git plugins
" " Handles hunks and display diffs
Plug 'airblade/vim-gitgutter'
" " Add a lot of git commands inside vim
Plug 'tpope/vim-fugitive'

Plug 'rust-lang/rust.vim'

" Airline - better status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
