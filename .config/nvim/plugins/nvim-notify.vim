UsePlugin 'nvim-notify'

" A fancy, configurable, notification manager for NeoVim

lua << EOF
notify = require('notify')
notify.setup({
  background_colour = "#1E222A",
})
EOF
