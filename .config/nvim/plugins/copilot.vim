UsePlugin 'copilot.vim'

" copilot
imap <silent><script><expr> <leader><Tab> copilot#Accept("")
"let g:copilot_no_tab_map = v:true
"nvim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
