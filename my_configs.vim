set relativenumber
set noshowmode
set autochdir
let g:lightline = {
    \'colorscheme': 'powerline',
    \'active': {
    \  'left': [['mode', 'paste'],
           \ ['gitbranch', 'readonly', 'filename', 'modified']]
    \},
    \'component_function': {
    \  'gitbranch': 'fugitive#head'
    \},
    \ }
