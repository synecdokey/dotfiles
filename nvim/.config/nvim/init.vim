" Remove netrw's top banner
let g:netrw_banner = 0

" True colours
if (has("termguicolors"))
 set termguicolors
endif

set list listchars=tab:»·,trail:·

" Source Plugins
lua require('plugins')

" Set theme
colorscheme spring-night

" Rust
" " Format on save
let g:rustfmt_autosave = 1
