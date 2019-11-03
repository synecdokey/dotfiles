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

call plug#end()
