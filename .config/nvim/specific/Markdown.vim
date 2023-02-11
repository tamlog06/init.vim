" Markdown
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Markdown
let g:mkdp_auto_start = 1   " automatically open markdown-preview

" new line
syntax match markdownLineBreak /\s\s$/ conceal cchar=↩︎
setlocal concealcursor=nvic
setlocal conceallevel=1
