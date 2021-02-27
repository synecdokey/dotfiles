" Remove netrw's top banner
let g:netrw_banner = 0

" True colours
if (has("termguicolors"))
 set termguicolors
endif

" Highlight trailing whitespaces
autocmd BufWinEnter * let w:m3=matchadd('Space', '\s\+$\| \+\ze\t', -1)
highlight Space ctermbg=darkblue
set list listchars=tab:»·,trail:·

" Source Plugins
source $XDG_CONFIG_HOME/nvim/plugins.vim

" Set theme
" " Careful, this one needs a true colors enabled terminal!
colorscheme spring-night

" Rust
" " Format on save
let g:rustfmt_autosave = 1
