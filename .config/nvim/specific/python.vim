let g:python3_host_prog = '/home/stamura/.pyenv/versions/neovim3/bin/python'

" Python
autocmd Filetype python nmap <leader>d <Plug>(pydocstring)
autocmd FileType python nmap <leader>p :Black<CR>
