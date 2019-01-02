" Syntax Highlighting
if has("syntax")
    syntax on
endif

set hlsearch    " 검색어 하이라이팅
set incsearch    " 증분 검색

set ruler        " 현재 커서 위치 표시
set autoindent    " 자동 들여쓰기
set cindent        " C언어 자동 들여쓰기
set nu

set smartindent
set tabstop=4         " 탭 너비
set shiftwidth=4 " 자동 들여쓰기 너비 설정
set expandtab    " 탭 대신 스페이스 사용
"set paste    " 붙여넣기 계단현상 없애기
"set paste 가 설정되면 expandtab 설정이 override 된다.
set pastetoggle=<F2>    " F2 버튼으로 paste 모드를 토글

"set list
"set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»

colorscheme desert
