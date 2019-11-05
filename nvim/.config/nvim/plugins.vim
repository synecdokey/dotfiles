call plug#begin($XDG_CONFIG_HOME . '/plugged')
" One syntax plugin to rule them all
Plug 'sheerun/vim-polyglot'

" Fuzzy finder goodness
if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf'
else
  Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --bin'}
endif
Plug 'junegunn/fzf.vim'

" VSCode Completion engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Git plugins
" " Git commands
Plug 'tpope/vim-fugitive'
" " Git diff in gutter
Plug 'airblade/vim-gitgutter'

" Create closing characters, à la VSCode, it's pretty useful
Plug 'jiangmiao/auto-pairs'

" Theme
Plug 'haishanh/night-owl.vim'

" Status line
Plug 'itchyny/lightline.vim'

call plug#end()
