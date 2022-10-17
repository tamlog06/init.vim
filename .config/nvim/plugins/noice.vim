UsePlugin 'noice.nvim'

" Highly experimental plugin that completely replaces the UI for messages, cmdline and the popupmenu.

lua << EOF
  require("noice").setup({
  })
EOF
