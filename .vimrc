"行番号表示
set number
"ファイルネーム表示
set title
"対応する括弧をハイライト
set showmatch
"カーソル行ハイライト
set cursorline
"バックアップファイルを作らない
set nobackup
set noswapfile
"クリップボード連携
set clipboard=unnamedplus
"insertモード中にjjでESC
inoremap <silent> jj <ESC>
"window切り替え
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"折り返し行移動
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
"tree表示ショートカット
nnoremap <silent><C-t> :NERDTreeToggle<CR>
"
let g:indent_guides_enable_on_vim_starup = 1
let g:flake8_ignore = 'E501'
let g:syntastic_python_flake8_args = '--ignore="E501"'
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
set showtabline=2
set t_Co=256
let g:airline_theme='deus'
let g:airline#extensions#tabline#formatter = 'default'

autocmd BufWritePost *.py call Flake8()

nmap <C-o> <Plug>AirlineSelectNextTab
"タブを半角スペース
set expandtab
"行頭のタブ幅
set shiftwidth=4
"行頭以外のタブ幅
set tabstop=4
"shiftwidthの倍数
set shiftround
filetype on

if &compatible
  set nocompatible
endif

" Add the dein installation directory into runtimepath
"set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
let s:dein_path = expand('~/.vim/dein')
let s:dein_repo_path = s:dein_path . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github からclone
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_path)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_path
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_path, ':p')
endif

if dein#load_state(s:dein_path)
  call dein#begin(s:dein_path)

  let g:config_dir  = expand('~/.vim/rc')
  let s:toml        = g:config_dir . '/dein.toml'
  let s:lazy_toml   = g:config_dir . '/dein_lazy.toml'
  " TOML 読み込み
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif


" Required:
filetype plugin indent on
syntax enable

"If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
