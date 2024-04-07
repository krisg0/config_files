" no need to be compatible with vi!
set nocompatible

" tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" more convenient settings
set encoding=utf-8

set scrolloff=3
set autoindent
set smartindent
set cindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

" set searching and moving
" if search all-lower or all-upper case word, it will be case-sensitive
" else it will be case insensitive
set ignorecase
set smartcase

set gdefault

" highlight search results
set incsearch
set showmatch
set hlsearch
set incsearch

"set split open position
set splitright
set splitbelow

" to show invisible characters
set list
set listchars=tab:▸\ ,eol:¬

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" save on losing focus
" au FocusLost * :wa

" set font
if has('gui_running')
set guifont=DejaVu\ Sans\ Mono\ 16
endif

" set working directory the same as the file you are editing.
set autochdir

" map K to split lines, the opposite of J
nmap K i<cr><esc>k$

" let ; equal to :
nnoremap ; :

" remap <ESC> to jj
inoremap jj <ESC>
"set terminal mode change to normal mode
tnoremap jj <C-W>N


" use tab key to match brackets pairs instead of %
nmap <tab> %
vmap <tab> %

" Press space to clear search highlighting and any message
" already displayed.
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>


" set the default encoding to utf-8
set encoding=utf-8

set showmode
set autowrite

set ls=2

"syntax highlight
syntax on
"show matching bracket with blinking
set showmatch
set matchtime=3

"set now autowrap
set textwidth=0
set wrapmargin=0

"visualize command
set showcmd

"change leader key
let mapleader = " "

"map terminal
nnoremap <Leader>t  :term<CR>
nnoremap <Leader>t  :vert term<CR>




"turn off backup
set nobackup
set noswapfile

colorscheme evening

"for matchit.vim settings, import for SV and verilog files

"enable filetype detect
filetype plugin on
"source ~/.vim/plugin/matchit.vim
au Filetype systemverilog
\let b:match_words=
\ '\<begin\>:\<end\>,' .
\ '\<if\>:\<else\>,' .
\ '\<module\>:\<endmodule\>,' .
\ '\<class\>:\<endclass\>,' .
\ '\<program\>:\<endprogram\>,' .
\ '\<clocking\>:\<endclocking\>,' .
\ '\<property\>:\<endproperty\>,' .
\ '\<sequence\>:\<endsequence\>,' .
\ '\<package\>:\<endpackage\>,' .
\ '\<covergroup\>:\<endgroup\>,' .
\ '\<primitive\>:\<endprimitive\>,' .
\ '\<specify\>:\<endspecify\>,' .
\ '\<generate\>:\<endgenerate\>,' .
\ '\<interface\>:\<endinterface\>,' .
\ '\<function\>:\<endfunction\>,' .
\ '\<task\>:\<endtask\>,' .
\ '\<case\>\|\<casex\>\|\<casez\>:\<endcase\>,' .
\ '\<fork\>:\<join\>\|\<join_any\>\|\<join_none\>,' .
\ '`ifdef\>:`else\>:`endif\>,'

"set ctags files
"set tags=./tags
"set tags+=~/.vim/tags/UVM/tags
"set tags+=$WS_DV_HOME/tags

"for ctags
nnoremap    <M-[>    <C-T>
nnoremap    <M-]>    g<C-]>

"remap the window switching, and with window effect
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

"show line numbers and behaviors
set number
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

"let vimdiff ignore white space
set diffopt+=iwhite

"test web modify"

