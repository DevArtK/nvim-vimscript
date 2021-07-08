if !exists('g:loaded_lspsaga') | finish | endif

lua << EOF
local saga = require 'lspsaga'


saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '⚠',
  hint_sign = '',
  infor_sign = '',
  --  >>    

 
  border_style = "round",
  dianostic_header_icon = '   ',
  code_action_icon = '',
  code_action_prompt = {
    enable = true,
    sign = true,
    sign_priority = 20,
    virtual_text = true,
  },
  max_preview_lines = 10, -- preview lines of lsp_finder and definition preview
  finder_definition_icon = '  ',
  finder_reference_icon = '  ',
  use_saga_diagnostic_sign = true,
  finder_action_keys = {
    open = 'o', vsplit = 's',split = 'i',quit = 'q',scroll_down = '<C-f>', scroll_up = '<C-b>' -- quit can be a table
  },
  code_action_keys = {
     quit = 'q',exec = '<CR>'
  },
   rename_action_keys = {
     quit = '<C-c>',exec = '<CR>'  -- quit can be a table
   },
   definition_preview_icon = '  ',
   rename_prompt_prefix = '➤',
}

EOF

nnoremap <silent> <C-j> <Cmd>Lspsaga diagnostic_jump_next<CR>


"nnoremap <silent>K <Cmd>Lspsaga hover_doc<CR>
"-- show hover doc
"nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
"
"-- or use command
nnoremap <silent>K :Lspsaga hover_doc<CR>
"
"
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>

nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>


"-- scroll down hover doc or scroll in definition preview
"nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
"-- scroll up hover doc
"nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
