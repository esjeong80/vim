""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" eunseok.jeong - .vimrc, (15.06.12)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                    " 오리지널 vi와의 호환성을 없애고 Vim 기능을 사용함
set all&                            " 설정된 모든 옵션을 기본값으로 설정

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure for Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                    " be iMproved, required
filetype off                        " required
set rtp+=~/.vim/bundle/Vundle.vim   " set the runtime path to include Vundle and initialize

call vundle#begin()                 " Keep Plugin commands between vundle#begin/end.
Plugin 'gmarik/Vundle.vim'
Plugin 'neocomplcache'              " 자동완성 기능
Plugin 'L9'                         " plugin from http://vim-scripts.org/vim/scripts.html
call vundle#end()

filetype plugin indent on           " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
" 기본 변수 (mandotary) 
"""""""""""""""""""""""""""""
"filetype on                         " 파일의 종류를 자동으로 인식하여 종류에 따른 구문 강조(taglist에도 필요)
syntax on                           " 구문 강조
colorscheme evening                 " 색상 스키마 설정
set encoding=utf-8                  " 기본 인코딩 타입 설정
set fileencoding=utf-8
set fencs=utf-8,euc-kr
"set modifiable                     " 관찰모드(보호모드)로 오픈한 파일(vim -M file)을 강제로 변경하려 할때 오류나는것을 해제
set cindent                         " C 언어 자동 들여쓰기
set autoindent                      " 자동 들여쓰기
set smartindent                     " if, for 같은 것 입력후 다음 라인 이동시 자동 들여쓰기
set wrap                            " 자동 줄바꿈 함
set ruler                           " 상태표시줄에 라인 및 컬럼위치 표시및 전체 문서의 위치를 %로 표시
set background=dark                 " 어두운 배경색 사용
"set expandtab                       " 탭 입력시 공백문자로 변환하여 입력 (Python 코딩시 편함)
set tabstop=2                       " Tab 간격 2칸 설정
set shiftwidth=2                    " smartindent 설정시 들여쓰기 간격, >>, << 사용시 간격 설정
set softtabstop=2                   " 탭 문자를 공백문자로 변환 시, 삭제하면 두칸단위로 삭제
set statusline=%h%F%m%r%=[%l:%c(%p%%)]  " 다중문서 작업시 상태표시줄
set title                           " 타이틀바에 현재 편집중인 파일을 표시
set ff=unix                         " 파일 타입 UNIX 형태로
set showmatch                       " 매치되는 괄호 (), {}의 반대쪽을 보여줌
":let loaded_matchparen = 0         " set noshowmatch 효과
set visualbell                      " 키를 잘못눌렀을 때 삑 소리를 내는 대신 번쩍이게 한다.
set nobackup                        " 백업파일을 생성하지 않음
set history=50                      " 명령어 기록 남길 수
set hlsearch                        " 검색어 강조 기능 사용
set autowrite                       " :next나 :make 같은 명령 입력시 자동저장
set backspace=indent,eol,start      " 줄의 시작, 끝, 들여쓰기에서 백스페이스 시 이전 줄에 연결
"set t_ti= t_te=                    " vim 종료시 편집화면이 클리어되지 않도록 함
set path=.,../include,/usr/include,/usr/local/include,/opt/oracle/product/10.2.0/db_1/precomp/public,/opt/oracle/product/10.2.0/db_1/rdbms/public,/opt/oracle/product/10.2.0/db_1/rdbms/demo,/opt/oracle/product/10.2.0/db_1/plsql/public,/opt/oracle/product/10.2.0/db_1/lib
"set path=.,../include
set tags+=./tags,../tags,../../tags,../src/tags,../server/tags,../prog/tags





"""""""""""""""""""""""""""""
" 기본 변수 (optional)
"""""""""""""""""""""""""""""
set ignorecase                      " 검색, 편집, 치환 시에 대소문자 구별 안함
"set nowrapscan                     " 찾기에서 파일의 맨 끝에 이르면 계속하여 찾지 않음
"set number                         " 줄 번호
"set paste                          " 붙여넣기 시에 자동들여쓰기로 계단현상 발생하는거 방지

"set fileencoding=korea
"set incsearch                      " 점진적으로 찾기
"set nojoinspaces                   " J 명령어로 줄을 붙일 때 마침표 뒤에 한칸만 띔
"set linespace=3                    " 줄간격
"set showcmd                        " (부분적인)명령어를 상태라인에 보여줌
"set keywordprg=ydic                " K를 눌렀을 때 실행할 명령어
"set textwidth=79                   " 만약 79번째 글자를 넘어가면
"let &tenc=&enc
"set tenc=korea
"set lz                             " 매크로 실행중에 화면을 다시 그리지 않음
"set lpl                            " 프로그램 시작시 플러그인 로드

"""""""""""""""""""""""""""""
" 플러그인 설정 "
"""""""""""""""""""""""""""""
" c.vim 플러그인의 C_InsertTemplate() 함수 맵핑 설정. "
"noremap <unique> <script> <Plug>CommentFuncDes :call C_InsertTemplate("comment.function")<CR>
"noremap <unique> <script> <Plug>CommentFrame :call C_InsertTemplate("comment.frame")<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Mapping (map:일반모드, map!:입력or명령모드)
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <F4>        :BufExplorer<cr>             " BufExplorer
"map  <F5>        :Tlist<cr><C-W><C-W>          " taglist

" Manpage
map   <F1>    K<CR>
map!  <F1>    <ESC><F1>

" make clean
map   <F2>    :!clear; make clean<CR>
map!  <F2>    <ESC><F2>

" make all, make install
map   <F3>    :!clear; make all; make install<CR>
map!  <F3>    <ESC><F3>

" 태그 파일 재생성
map   <F4>    :!clear; rm tags; make tags<CR>
map!  <F4>    <ESC><F4>

" 디렉토리 리스트 창 열기
map   <F5>    :40vs ./<CR>
map!  <F5>    <ESC><F5>

" 선택파일 열고 디렉토리 리스트 창 닫기
map   <F6>    <ESC><S-P><C-W><C-W><C-W>c
map!  <F6>    <ESC><F6>

" Tag List
map   <F7>    :Tlist<CR>
map!  <F7>    <ESC><F7>

" PYTHON 실행
map   <F8>    :!clear; python %<CR>
map!  <F8>    <ESC><F8>

" C 컴파일
map   <F9>    :!clear; gcc -g % -o %<<CR>
map!  <F9>    <ESC><F9>

" C 프로그램 실행
map   <F10>   :!clear; ./%<<CR>
map!  <F10>   <ESC><F10>

" JAVA 컴파일
map   <F11>   :!clear; javac %<CR>
map!  <F11>   <ESC><F11>

" JAVA 프로그램 실행
map   <F12>   :!clear; java %<<CR>
map!  <F12>   <ESC><F12>

" PageUp, PageDown
map   <PageUp>  <C-U><C-U>
map   <PageDown>  <C-D><C-D>

" 폴딩 열고 닫기
map   <C-k>   v]}zf<CR>
map   <C-j>   zo<CR>

" 창 다중분할 시 한번에 종료하기(저장없음)
map   <S-z><S-z>  <C-w>h:q<CR>:q<CR>:q<CR>

" 대칭기호 연속입력시 기호사이 자동입력 모드
"map!  ()      ()<ESC>i
"map!  ();     ();<ESC>hi
"map!  []      []<ESC>i
"map!  {}      {}<ESC>i
"map!  {};     {};<BS><ESC>i<CR><ESC>O
"map!  <>      <><ESC>i
"map!  ''      ''<ESC>i
"map!  ""      ""<ESC>i

" F1은 프레임 형식의 주석 달기, Ctrl+F1은 함수에 대한 설명 달기 "
"map <F1> <Plug>CommentFrame
"map! <F1> <ESC><F1><ESC>a
"map <C-F1> <Plug>CommentFuncDes
"map! <C-F1> <ESC><C-F1><ESC>a

" F2는 탭 열기, Ctrl+h,l로 탭 이동 "
"map <F2> :tabnew<CR>
"map <C-h> gT
"map <C-l> gt

" F6은 파일 비교하기, Ctrl+F6로 파일 비교하기 해제 "
"map <F6> :diffthis<CR><C-w><C-w>:diffthis<CR>
"map <C-F6> :diffoff<CR><C-w><C-w>:diffoff<CR>

" F7은 Hex 모드 "
"map <F7> :%!xxd<CR>

" F8은 ctags 생성 "
"map <F8> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>

" ESC키를 누르면 한글 모드가 해제 "
" 입력모드에서 이전 언어 설정 모드 유지 "
"inoremap <ESC> <ESC>:set imdisable<CR>
"nnoremap i :set noimd<CR>i
"nnoremap I :set noimd<CR>I
"nnoremap a :set noimd<CR>a
"nnoremap A :set noimd<CR>A
"nnoremap o :set noimd<CR>o
"nnoremap O :set noimd<CR>O


"""""""""""""""""""""""""""""""""""""""""""""""""""""

" ================ Python 설정 ==================
autocmd BufNewFile,BufRead *.py setfiletype python
"autocmd BufNewFile *.py 0r ~/.vim/templetes/skeleton.py
autocmd FileType python set syntax=python
autocmd FileType python set autoindent
autocmd FileType python set expandtab
autocmd FileType python set tabstop=2
autocmd FileType python set softtabstop=2
autocmd FileType python set shiftwidth=2
autocmd FileType python set smarttab
autocmd FileType python set smartindent
autocmd FileType python set sta
autocmd FileType python noremap <F9> :w<CR>:!clear;python %<CR>
autocmd FileType python noremap <C-F9> :w<CR>:!python %

" pydiction-1.2.1
"filetype plugin on
"let g:pydiction_location='/home/esjeong80/.vim/pydiction-1.2.1/complete-dict'

"autocmd FileType python set autoindent
"autocmd FileType python set foldmethod=indent
"autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
" ===============================================


" ===== neocompcache environment ==================================
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplcache_enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplcache_enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplcache_force_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" ==========================================================================

