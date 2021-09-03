
if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = 1000,
  },
  ensure_installed = {
    "bash",
    "tsx",
    "typescript",
    "javascript",
    "dockerfile",
    "toml",
    "fish",
    "php",
    "json",
    "jsdoc",
    "yaml",
    "java",
    "python",
    "rust",
    "lua",
    "html",
    "scss"
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }
EOF
