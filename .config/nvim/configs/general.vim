""" Main Configurations
filetype plugin indent on                "detect filetype and set different settings for each filetype
set tabstop=4 softtabstop=4 shiftwidth=4 "tab setting
set expandtab smarttab autoindent        "tab setting
set incsearch                            "n/N to jump next/before candidate
set ignorecase                           "don't destinguish large and small character
set smartcase                            "if large character is included in search character, ignore ignorecase
set wrapscan                             "go back to top if go to the bottom
set hlsearch                             "hilight words
set wildmode=longest,list,full wildmenu  "set tab completion
set ruler                                "display cursor position
set laststatus=2                         "always display status line
set showmode                             "display current mode
set list                                 "display blank text
set nowrap                               "don't wrap
set encoding=utf-8                       "utf-8
set hidden                               "keep buffer
set number                               "display line number
set relativenumber                       " display relativenumber
set title                                "display title
set clipboard=unnamed                    "copy to clipboard
set confirm
set scrolloff=999                        " automatically move active column to center

""" Mouse settings
set mouse=a                               "use mouse
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
"nnoremap <C-U> :call SmoothScroll(1)<Enter>
"nnoremap <C-D> :call SmoothScroll(0)<Enter>
"inoremap <C-U> <Esc>:call SmoothScroll(1)<Enter>i
"inoremap <C-D> <Esc>:call SmoothScroll(0)<Enter>i


"" Terminal setting

" resize terminal with T
command! -nargs=* T split | wincmd j | resize 5 | terminal <args>
" open terminal with insert mode
autocmd TermOpen * startinsert

