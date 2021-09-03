"----- Theme ----
if has('termguicolors')
  set termguicolors
endif

" Enable true color 
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set background=dark
colorscheme gruvbox-material
let g:gruvbox_material_background = 'hard'

"highlight CursorLineNr guifg=#f39d62
highlight ColorColumn ctermbg=0 guibg=#1C201F
highlight LineNr      term=bold cterm=bold ctermfg=2 guifg=#4379a0

let g:gruvbox_material_visual = 'grey background'
let g:gruvbox_material_cursor = 'yellow'
"let g:lightline.colorscheme = 'gruvbox_material'



"let g:gruvbox_contrast_dark='hard'
""colorscheme gruvbox8_hard
"let g:gruvbox_filetype_hi_groups = 1
"let g:gruvbox_italicize_strings = 0
"let g:gruvbox_bold = 0


"colorscheme monokai_pro 
