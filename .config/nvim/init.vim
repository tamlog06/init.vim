source ~/.config/nvim/load_plugs.vim

" Load General Configurations
runtime! configs/*.vim

" Load Filetype-Specific Configurations
runtime! specific/*.vim

" Load Color Configurations
runtime! color/*.vim

" Load Plugin Configurations
let s:plugs = get(s:, 'plugs', get(g:, 'plugs', {}))
function! FindPlugin(name) abort
  return has_key(s:plugs, a:name) ? isdirectory(s:plugs[a:name].dir) : 0
endfunction
command! -nargs=1 UsePlugin if !FindPlugin(<args>) | finish | endif

runtime! plugins/*.vim

""" Core plugin configuration (vim)

autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

""" Core plugin configuration (lua)
lua << EOF
servers = {
    'pyright',
    'tsserver', -- uncomment for typescript. See https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md for other language servers
    'html',
    'cssls',

}

require('treesitter-config')
require('nvim-cmp-config')
require('lspconfig-config')
require('telescope-config')
require('lualine-config')
require('nvim-tree-config')
require('diagnostics')
EOF

""" Custom Functions


