let mapleader=","

" Neovim :Terminal
tmap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
"tmap <C-d> <Esc>:q<CR>

" Core
nmap <leader>q :NvimTreeFindFileToggle<CR>
nmap \ <leader>q
nmap <leader>r :so ~/.config/nvim/init.vim<CR>
nmap <leader>t :call TrimWhitespace()<CR>
xmap <leader>a gaip*
nmap <leader>a gaip*
nmap <leader>h :RainbowParentheses!!<CR>
"nmap <leader>j :set filetype=journal<CR>
nmap <leader>k :ColorToggle<CR>
nmap <leader>l :Limelight!!<CR>
xmap <leader>l :Limelight!!<CR>
nnoremap <leader><leader> :noh<CR>
nnoremap <ESC><ESC> :noh<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
nmap <leader>$s <C-w>s<C-w>j:terminal<CR>:set nonumber<CR><S-a>
nmap <leader>$v <C-w>v<C-w>l:terminal<CR>:set nonumber<CR><S-a>


" increase indent
"nnoremap <Tab> >>
inoremap <Tab> <C-t>

" decrease indent
"nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>         " doesn't work

" map Ctrl-hjkl to Ctrl-w-hjkl
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" emphisize cursor
nnoremap <leader>a :<C-u>setlocal cursorline! cursorcolumn!<CR>
"setlocal cursorline! cursorcolumn!


" change japanese IME to english when moving from insert mode 
if has('unix')
  autocmd InsertLeave * :call OffIME()
endif
function! OffIME() abort
  " fcitx-remote returns 1 if current method is mozc
  let l:fcitx_status = system('fcitx-remote')
  if fcitx_status == 1
    call system('fcitx-remote -s fcitx-keyboard-us')
  endif
endfunction
