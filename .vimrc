set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scwood/vim-hybrid'
Plugin 'fatih/vim-go'
" Plugin 'Yggdroot/indentLine.git'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'solarnz/thrift.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'editorconfig/editorconfig-vim'

call vundle#end()
filetype plugin indent on

set background=dark
colorscheme hybrid
syntax on
set number
set relativenumber

let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '|'

" Search
set ignorecase
set smartcase
set incsearch

" Tabs
" set tabstop=4 softtabstop=4 shiftwidth=4

" Close vim if Nerdtree is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open Nerdtree F2
map <F2> :NERDTreeToggle<CR>

" Open NERDTree automatically
autocmd vimenter * NERDTree

" Change buffer to the next one so I'm not stuck on Nerdtree
autocmd VimEnter * wincmd p
 
" Make Nerdtree prettier
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1

" Vim Navigation
nnoremap <tab> <C-w>w
nnoremap <S-tab> <C-w>W

" Make arrow keys do nothing to break my habit
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Resize splits
nmap <leader>. :vertical resize +5<cr>
nmap <leader>, :vertical resize -5<cr>
nmap <leader>= :resize +5<cr>
nmap <leader>- :resize -5<cr>

:set list lcs=tab:\|.

" vim-jsx highlighting for .js files too
let g:jsx_ext_required = 0
