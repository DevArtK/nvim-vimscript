if !exists('g:lspconfig')
  finish
endif

lua require'colorizer'.setup()

lua << EOF
vim.lsp.set_log_level("debug")
EOF

lua << EOF
local nvim_lsp = require('lspconfig')
local protocol = require'vim.lsp.protocol'


-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer

local on_attach = function(client, bufnr)
  print("LSP Started")
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  --require'diagnostic'.on_attach(client, bufnr)
  require'completion'.on_attach(client, bufnr)
  require'nvim-autopairs'.setup()

  -- Nvim Pairs
  local remap = vim.api.nvim_set_keymap
  local npairs = require('nvim-autopairs')

  -- skip it, if you use another global object
  _G.MUtils= {}

  vim.g.completion_confirm_key = ""

  MUtils.completion_confirm=function()
    if vim.fn.pumvisible() ~= 0  then
      if vim.fn.complete_info()["selected"] ~= -1 then
        require'completion'.confirmCompletion()
        return npairs.esc("<c-y>")
      else
        vim.api.nvim_select_popupmenu_item(0 , false , false ,{})
        require'completion'.confirmCompletion()
        return npairs.esc("<c-n><c-y>")
      end
    else
      return npairs.autopairs_cr()
    end
  end

  remap('i' , '<CR>','v:lua.MUtils.completion_confirm()', {expr = true , noremap = true})

  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<Space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<Space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<Space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<Space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<Space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<Space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', '<Space>gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<Space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '<Space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap("n", "<Space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  -- buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  -- buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  -- buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)

  -- Format on Save
  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end

  --protocol.SymbolKind = { }
  protocol.CompletionItemKind = {
    '', -- Text
    '', -- Method
    '', -- Function
    '', -- Constructor
    '', -- Field
    '', -- Variable
    '', -- Class
    '', -- Interface
    '', -- Module
    '', -- Property
    '', -- Unit
    '', -- Value
    '', -- Enum
    '', -- Keyword
    '', -- Snippet
    '', -- Color
    '', -- File
    '', -- Reference
    '', -- Folder
    '', -- EnumMember
    '', -- Constant
    '', -- Struct
    '', -- Event
    'ﬦ', -- Operator
    '', -- TypeParameter
    }
  --  

end



-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { "pyright", "rust_analyzer", "tsserver", "bashls", "html", "cssls" }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
      }
    }
end



nvim_lsp.flow.setup {
  on_attach = on_attach
  }

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" }
  }

nvim_lsp.diagnosticls.setup {
  on_attach = on_attach,
  filetypes = { 'javascript', 'javascriptreact', 'json', 'typescript', 'typescriptreact', 'css', 'less', 'scss', 'markdown', 'pandoc' },
  init_options = {
    linters = {
      eslint = {
        command = 'eslint_d',
        rootPatterns = { '.git' },
        debounce = 100,
        args = { '--stdin', '--stdin-filename', '%filepath', '--format', 'json' },
        sourceName = 'eslint_d',
        parseJson = {
          errorsRoot = '[0].messages',
          line = 'line',
          column = 'column',
        endLine = 'endLine',
      endColumn = 'endColumn',
      message = '[eslint] ${message} [${ruleId}]',
      security = 'severity'
      },
    securities = {
      [2] = 'error',
      [1] = 'warning'
      }
    },
  },

filetypes = {
  javascript = 'eslint',
  javascriptreact = 'eslint',
  typescript = 'eslint',
  typescriptreact = 'eslint',
  },

formatters = {
  eslint_d = {
    command = 'eslint_d',
    args = { '--stdin', '--stdin-filename', '%filename', '--fix-to-stdout' },
    rootPatterns = { '.git' },
    },
  prettier = {
    command = 'prettier',
    args = { '--stdin-filepath', '%filename' }
    }
  },

formatFiletypes = {
  css = 'prettier',
  javascript = 'eslint_d',
  javascriptreact = 'eslint_d',
  json = 'prettier',
  scss = 'prettier',
  less = 'prettier',
  typescript = 'eslint_d',
  typescriptreact = 'eslint_d',
  json = 'prettier',
  markdown = 'prettier',
    }
  }

}
EOF

