UsePlugin 'sidebar.nvim'

" A generic and modular lua sidebar inspired by lualine

lua << EOF
local sidebar = require("sidebar-nvim")
local opts = {open = true}
sidebar.setup(opts)
EOF
