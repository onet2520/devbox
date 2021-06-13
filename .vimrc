let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'elzr/vim-json'
Plug 'dyng/ctrlsf.vim'

" Initialize plugin system
call plug#end()

" HotKey for NerdTree
let mapleader = ","
nmap <leader>ne :NERDTreeToggle<cr>
nmap <leader>f :Files<cr>
nmap <leader>a :CtrlSF -R ""<Left>
nmap <leader>c :CtrlSFFocus<CR>
nmap <leader>C :CtrlSFToggle<CR>

:set shiftwidth=2
:set autoindent
:set smartindent
:set hlsearch

let g:airline#extensions#tabline#enabled = 1
let g:ctrlsf_default_view_mode = 'compact'


