" Remove netrw's top banner
let g:netrw_banner = 0

" True colours
if (has("termguicolors"))
 set termguicolors
endif

set list listchars=tab:»·,trail:·


" Source Plugins
source $XDG_CONFIG_HOME/nvim/plugins.vim

" Set theme
colorscheme spring-night

" Rust
" " Format on save
let g:rustfmt_autosave = 1
