" basic settings
set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileformat=unix
set number
set noshowmode
set expandtab
set shiftwidth=2
set nofoldenable
set nohls
set updatetime=400
set shell=/bin/zsh
set term=xterm-256color
colorscheme ron

"""""""""""""""""""""""
" key remapping
"""""""""""""""""""""""
" keep cursor always in center
" noremap j jzz
" noremap k kzz

tnoremap <Esc> <C-W>N
noremap <leader>a <C-a>
noremap <leader>x <C-x>

" Persistent folds between Vim sessions

if bufname('#') != ''
  augroup AutoSaveFolds
    autocmd!
    autocmd BufWinLeave * mkview
    autocmd BufWinEnter * silent loadview
  augroup END
endif


" --- auto completion
let g:ale_completion_enabled=1
let g:LanguageClient_serverCommands = {
\   'javascript': ['~/workspace/github/javascript-typescript-langserver/lib/language-server-stdio']
\}


" --- style ---
" change cursor shape in different modes ( only work on tmux runnint in iTerm2 on OS X )
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

let g:lightline = {
      \ 'colorscheme':  'icefire',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['filename'], ['readonly'], ['modified'] ],
      \   'right': [[ 'lineinfo' ], ['percent'], ['fugitive' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?" " . fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
\}

