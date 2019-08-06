" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"	    VIM CONFIGURATION FILE FOR LIBUNKO
"
"
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" display line number
set number

" display search highlight
set hlsearch

" support 256 colours
set t_Co=256

" encode setting
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk

" indentatio nsetting
set autoindent
set shiftwidth=4
set softtabstop=4

" leader setting
let mapleader=','

" use jj replace ESC  
inoremap jj <ESC>

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
Plug 'majutsushi/tagbar'
Plug 'lfv89/vim-interestingwords'
Plug 'Valloric/YouCompleteMe',{'do':'python3 install.py --clang-completer'}
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/vim-cursorword'
Plug 'lfv89/vim-interestingwords'

" Initialize plugin system
call plug#end()

" NERDTree setting
let NERDTreeShowHiden=1
nnoremap <leader>f :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>

" ctrlp.vim setting
let g:ctrlp_map = '<c-p>'

" easymotion setting
nmap ss <Plug>(easymotion-s2)

" tarbar setting
nnoremap <leader>t :TagbarToggle<CR>
set tags=tags;
set autochdir

