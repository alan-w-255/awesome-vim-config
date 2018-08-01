" basic settings
set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set number
set noshowmode
set expandtab
set shiftwidth=2
set nofoldenable

" Persistent folds between Vim sessions

augroup AutoSaveFolds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent loadview
augroup END

" --- lint ---


" --- style ---
" change cursor shape in different modes ( only work on tmux runnint in iTerm2 on OS X )
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

let g:lightline = {
    \'colorscheme': 'powerline',
    \'active': {
    \  'left': [['mode', 'paste'],
           \ ['gitbranch', 'readonly', 'filename', 'modified']]
    \},
    \'component_function': {
    \  'gitbranch': 'fugitive#head'
    \},
 \}
