set number
set noshowmode
set expandtab
set shiftwidth=2
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
