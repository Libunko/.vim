
set number
set hlsearch

" set leader
let mapleader=','

" use ctrl+h/j/k/l switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" file tree
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'

" Initialize plugin system
call plug#end()

" NERDTree setting
let NERDTreeShowHiden=1
nnoremap <leader>t :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>

" ctrlp.vim setting
let g:ctrlp_map = '<c-p>'

" eastmotion setting
nmap ss <Plug>(easymotion-s2)

