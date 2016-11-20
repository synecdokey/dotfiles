call plug#begin('~/.config/nvim/plugins')

" Git plugins
" " Handles hunks and display diffs
Plug 'airblade/vim-gitgutter'
" " Add a lot of git commands inside vim
Plug 'tpope/vim-fugitive'

" Rust plugins
" " Syntax Highlighting
Plug 'rust-lang/rust.vim'
" " Code completion & navigation
Plug 'racer-rust/vim-racer'

" Airline - better status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
