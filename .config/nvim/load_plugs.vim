""" Vim-Plug
call plug#begin()
" Core (treesitter, nvim-lspconfig, nvim-cmp, nvim-telescope, nvim-lualine)
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' } " syntax highlighting
Plug 'nvim-treesitter/playground'                             " syntax highlighting
"Plug 'airblade/vim-gitgutter'                                 " git
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'                          "fuzzy finder
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' } "fuzzy finder
Plug 'nvim-lualine/lualine.nvim'                              " statusline below
Plug 'kyazdani42/nvim-web-devicons'                           " icons
Plug 'kyazdani42/nvim-tree.lua'                               " file explorer
Plug 'p00f/nvim-ts-rainbow'                                   " emphisize corresponded brackets

" lsp
Plug 'neovim/nvim-lspconfig'                                  " lsp settings
Plug 'hrsh7th/cmp-nvim-lsp'                                   " lsp completion
Plug 'hrsh7th/nvim-cmp'                                       " lsp completion
Plug 'hrsh7th/cmp-buffer'                                     " lsp buffer completion
Plug 'hrsh7th/cmp-path'                                       " lsp path completion
Plug 'hrsh7th/cmp-cmdline'                                    " lsp cmdline completion
Plug 'hrsh7th/cmp-vsnip'                                      " lsp vsnip completion
Plug 'hrsh7th/vim-vsnip'                                      " lsp vsnip completion
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'                    " lsp signature help

" Functionalities
function! UpdateRemotePlugins(...)
  "" Needed to refresh runtime files
  let &rtp=&rtp
  UpdateRemotePlugins
endfunction
Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }   " fancy completion of wild menu
"Plug 'tpope/vim-sensible'
"Plug 'tpope/vim-surround'                                     " change the corresponding brackets
Plug 'mhinz/vim-signify'                                      " display git diff
"Plug 'jiangmiao/auto-pairs'                                   " auto close brackets
Plug 'cohama/lexima.vim'                                       " auto close brackets
Plug 'alvan/vim-closetag'                                      " auto close tags
"Plug 'tpope/vim-abolish'                                      " 
Plug 'junegunn/vim-easy-align'                                 " align text; 'gaip' command
Plug 'scrooloose/nerdcommenter'                                " comment out 
Plug 'Yggdroot/indentLine'                                     " display indent line
"Plug 'chrisbra/Colorizer'
"Plug 'KabbAmine/vCoolor.vim'
Plug 'dkarter/bullets.vim'                                     " align indent
Plug 'wellle/context.vim'                                      " display context
"Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'easymotion/vim-easymotion'
Plug 'github/copilot.vim'                                      " copilot
Plug 'MunifTanjim/nui.nvim'                                    " library for lua. required by some plugins
Plug 'rcarriga/nvim-notify'                                    " notification manager
Plug 'folke/noice.nvim'                                        " notification manager
Plug 'norcalli/nvim-colorizer.lua'                             " colorize hex code
Plug 'folke/todo-comments.nvim'                                " todo-comments
Plug 'sidebar-nvim/sidebar.nvim'                               " sidebar
Plug 'goolord/alpha-nvim'                                      " initial screen
"Plug 'folke/which-key.nvim'                                    " display which-key
Plug 'skywind3000/asyncrun.vim'                                " async run

" Functionalities - Python
Plug 'psf/black', { 'branch': 'stable' }
Plug 'heavenshell/vim-pydocstring'

" Functionalities - git
Plug 'tpope/vim-fugitive'

" Functionalities - Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" Aesthetics - Colorschemes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'zaki/zazen'
Plug 'yuttie/hydrangea-vim'

" Aesthetics - Others
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-journal'

call plug#end()
