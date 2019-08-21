" Syntax Highlighting
if has("syntax")
    syntax on
endif

set hlsearch    " 검색어 하이라이팅
set incsearch    " 증분 검색

set ruler        " 현재 커서 위치 표시
set autoindent    " 자동 들여쓰기
set cindent        " C언어 자동 들여쓰기
set nu rnu     "hybrid line number 사용

set smartindent
set tabstop=4         " 탭 너비
set shiftwidth=4 " 자동 들여쓰기 너비 설정
set expandtab    " 탭 대신 스페이스 사용
"set paste    " 붙여넣기 계단현상 없애기
"set paste 가 설정되면 expandtab 설정이 override 된다.
set pastetoggle=<F2>    " F2 버튼으로 paste 모드를 토글

set noerrorbells
set visualbell t_vb=

set gfn=Menlo:h14

if has("autocmd")
    au FocusLost * :wa
endif

colorscheme desert

"Mode Settings

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

" https://stackoverflow.com/questions/6467634/create-a-command-shortcut-for-nerdtree-in-vim-editor
" shortcut for nerdtree
let mapleader = ","
nmap <leader>ne :NERDTreeToggle<cr>

" ctrlp ignore
let g:ctrlp_custom_ignore = {
            \'dir': '\.git$\',
            \'file': '\.(so)$'
            \}

" https://github.com/junegunn/vim-plug/wiki/tutorial
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'godlygeek/tabular'

call plug#end()
