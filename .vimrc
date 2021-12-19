set nocompatible
filetype off

set ignorecase
set smartcase
set encoding=utf-8
set cursorline
"let g:ycm_use_clangd = 1

"Automatic installation vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'Valloric/YouCompleteMe'
"Plug 'majutsushi/tagbar'
Plug 'vim-scripts/c.vim'
"Plug 'ericcurtin/CurtineIncSw.vim'
"Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'easymotion/vim-easymotion'
"Plug 'vim-syntastic/syntastic'
Plug 'ap/vim-buftabline'
"Plug 'chemzqm/vim-iterm2-start'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'tpope/vim-surround'

"Colorschemes
"Plug 'chriskempson/base16-vim'
Plug 'gorodinskiy/vim-coloresque'
call plug#end()

"To enable the tools for cmake or doxygen by c.vim plugin
let g:C_UseTool_cmake='yes'
let g:C_UseTool_doxygen='yes' 

"Set a keyboard for ericcurtin/CurtineIncSw.vim plugin
"map <F5> :call CurtineIncSw()<CR>

set number
set relativenumber

"Tabs
set smarttab
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4

"Search case and highlit
set hlsearch
set incsearch

set mouse=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

set backspace=indent,eol,start

"Open new split panes
set splitright
set splitbelow

"NERDTree
map <silent> <leader><leader> :NERDTreeToggle<CR> " leader is `\`
"majutsushi/tagbar
"nmap <F8> :TagbarToggle<CR>

"CtrlP
"let g:ctrlp_map = '<c-]>'
"let g:ctrlp_cmd = 'Ctrl]'
"let g:ctrlp_switch_buffe = '<c-]>'
let g:ctrlp_working_path_mode = 'ra'

"Disable arrow navigation in the normal mode
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>

"Copy/past mapping, depend of +xterm-clipboard (apt-get install vim-gtk)
"nnoremap <C-y> "+y
"vnoremap <C-y> "+y
"nnoremap <C-p> "+p
"vnoremap <C-p> "+p

"let mapleader=","
let &path.="/usr/include/,/usr/include/c++/7"

"EasyMotion binding start
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap <leader>s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
"nmap <leader>s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
"EasyMotion binding end

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"colorscheme base16-default-dark
let base16colorspace=256  " Access colors present in 256 colorspace

":set list
set listchars=eol:$,precedes:«,extends:»,space:·,tab:→-,trail:-,nbsp:%
 
