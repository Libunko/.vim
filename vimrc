
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
Plug 'majutsushi/tagbar'
Plug 'lfv89/vim-interestingwords'
Plug 'Valloric/YouCompleteMe',{'do':'python3 install.py --clang-completer'}

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

