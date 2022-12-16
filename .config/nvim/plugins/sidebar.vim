UsePlugin 'sidebar.nvim'

" A generic and modular lua sidebar inspired by lualine
lua << EOF
require("sidebar-nvim").setup({
    open = false,
    bindings = { ["q"] = function() require("sidebar-nvim").close() end },
})
EOF
