UsePlugin 'alpha-nvim'

" alpha is a fast and fully programmable greeter for neovim.
lua << EOF
require'alpha'.setup(require'alpha.themes.startify'.config)
EOF
