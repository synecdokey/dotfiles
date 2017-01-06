call plug#begin('~/.config/nvim/plugins')

" Code completion & navigation
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --racer-completer' }

" Git plugins
" " Handles hunks and display diffs
Plug 'airblade/vim-gitgutter'
" " Add a lot of git commands inside vim
Plug 'tpope/vim-fugitive'

" Change surrounding brackets/parentheses/etc. easily
Plug 'tpope/vim-surround'

" Better syntax highlighting
" " Ansible
Plug 'pearofducks/ansible-vim'
" " TOML
Plug 'cespare/vim-toml'
" " Typescript
Plug 'leafgarland/typescript-vim'

" Rust plugins
" " Syntax Highlighting
Plug 'rust-lang/rust.vim'
" " Code completion & navigation
Plug 'racer-rust/vim-racer'

" Airline - better status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
