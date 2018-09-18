" =============
" P L U G I N S
" =============

" START PLUG
call plug#begin()

Plug 'rakr/vim-two-firewatch' " color Theme
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " nerdtree tree view
Plug 'scrooloose/syntastic' " syntax errors
Plug 'bling/vim-airline' " vim-airline status bar
Plug 'vim-airline/vim-airline-themes' " vim-airline theming
Plug 'majutsushi/tagbar' " tag bar code outliner

" completion
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif


Plug 'ctrlpvim/ctrlp.vim' " ctrl-p.vim (fuzzy finding mapped to ctrl-p)
Plug 'nathanaelkane/vim-indent-guides' " vim indentation guides

call plug#end()


" ===========
" C O N F I G
" ===========

syntax on
set encoding=utf-8  " set the encoding (plugins rely on this)
set termguicolors   " show colorschemes in all terminals/applications
set number          " linenumbers

" map keys
map <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

let g:tagbar_ctags_bin='C:\Program Files\ctags\ctags.exe' " configure tagbar
let g:indent_guides_enable_on_vim_startup = 1 " configure indent guides

" configure syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" set the theming
set background=dark
let g:two_firewatch_italics=1
colorscheme two-firewatch
let g:airline_theme='twofirewatch'

" Use deoplete.
let g:python3_host_prog='C:\Users\mcampbell\AppData\Local\Programs\Python\Python37/python'
let g:deoplete#enable_at_startup=1
