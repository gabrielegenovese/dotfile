vim.g.python3_host_prog = '/usr/bin/python3'
require 'visimp' {

  rocq = {
    coqtail = {
      indent_on_dot = 1 -- do not use the coqtail_ prefixes
    },
    binds = {
      [{
        mode = 'n',
        bind = '<leader>l',
        opts = {
          desc = 'Rocq: check up to current line',
        },
      }] = function() vim.cmd 'CoqToLine' end,
    },
  },

  languages = {
    -- 'agda',
    -- 'ampl',
    -- 'bash',
    -- 'c',
    -- 'coq',
    -- 'csharp',
    -- 'css',
    -- 'dart',
    'gleam',
    'go',
    -- 'haskell',
    -- 'hcl',
    'html',
    -- 'idris',
    'java',
    -- 'javascript',
    'json',
    'latex',
    -- 'lean',
    'lua',
    'markdown',
    -- 'ocaml',
    -- 'php',
    -- 'prolog',
    'python',
    'rust',
    -- 'svelte',
    -- 'swift',
    -- 'toml',
    'typst',
    'rocq'
    -- 'vue'
  },

  theme = {
    package = 'gruvbox-community/gruvbox',
    colorscheme = 'gruvbox',
    background = 'dark',
    lualine = 'gruvbox',
  },
}
