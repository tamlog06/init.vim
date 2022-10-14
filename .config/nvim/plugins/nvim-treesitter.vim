UsePlugin 'nvim-treesitter'
"""
" This plugin is for syntax highlighting
"""

" Treesitter
augroup DraculaTreesitterSourcingFix
    autocmd!
    autocmd ColorScheme dracula runtime after/plugin/dracula.vim
    syntax on
augroup end

