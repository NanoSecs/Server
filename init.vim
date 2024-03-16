syntax on
set mouse=a
set noerrorbells
set sw=2
set expandtab
set smartindent
set numberwidth=1
set number 
set nowrap
set noswapfile
set nobackup
set incsearch
set clipboard=unnamedplus
set encoding=utf-8
set hidden
set ignorecase
set showcmd
set showmatch

"Linea derecha
set colorcolumn=120
highlight ColoColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.config/nvim/plugged')
"Temas
Plug 'morhetz/gruvbox'
"Funcionalidad
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
"Visual
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
call plug#end()

"Themas
set termguicolors
set background=dark
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_foats = 1
let g:airline_theme='tomorrow'

"Mapeos
let mapleader=' '
nnoremap <leader>w :w<CR>
nnoremap <leader>e :w<CR>:source ~/.config/nvim/init.vim<CR>
nnoremap <leader>q :x<CR>
nnoremap <leader>pl :PlugInstall<CR>
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>vs :vsp<CR>
nnoremap <leader>bs :split<CR>
nnoremap <leader>h :TmuxNavigateUp<CR>
nnoremap <leader>j :TmuxNavigateDown<CR>
nnoremap <leader>k :TmuxNavigateLeft<CR>
nnoremap <leader>l :TmuxNavigateRight<CR>
nnoremap <leader>vc :e ~/.init.vim<CR>
nnoremap <leader>f :FZF<CR>
nnoremap <c-t> :split<CR>:ter<CR>i
