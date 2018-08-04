
let s:deepblue = '#005fff'
let s:darkblue = '#005f5f'
let s:white = '#ffffff'
let s:red = '#ff0000'
let s:brightyellow = '#ffff00'
let s:cyan = '#00ffff'
let s:darkgrey = '#262626'
let s:brightgrey = '#cccccc'
let s:deepgrey = '#444444'
let s:grey = '#808080'
let s:black = '#000000'
let s:darkred = '#af0000'

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

" normal mode statusline
let s:p.normal.left = [ [ s:darkblue, s:white], [s:white, s:deepblue ] ]
let s:p.normal.right = [ [ s:cyan, '#d70087' ], [ '#d70087',  s:cyan], [ s:brightgrey, s:red ] ]
let s:p.normal.middle = [ [ s:white, s:darkgrey] ]

" insert mode statusline
let s:p.insert.left = [ [ s:white, s:red], [s:white, s:deepblue ] ]     " insert mode bottom left

" replace mode statusline
let s:p.replace.left = [ [ s:darkblue, s:brightyellow ], [s:white, s:deepblue ] ]

" visual mode statusline
let s:p.visual.left = [ [ s:red, s:cyan ], [ s:white, s:deepblue ] ]


" inactive pane statusline
let s:p.inactive.middle = [ [ s:white, s:black ] ]
let s:p.inactive.left = [ [ s:darkblue, s:white], [s:white, s:deepblue ] ]
let s:p.inactive.right = [ [ s:cyan, '#d70087' ], [ '#d70087',  s:cyan] ]

" tabline style
let s:p.tabline.left = [ [ s:brightgrey, s:darkred] ] " inactive tab
let s:p.tabline.tabsel = [ [s:white, s:red] ] " active tab
let s:p.tabline.middle = [ [ '#666666', s:darkgrey] ] " upper middle
let s:p.tabline.right = copy(s:p.normal.right)

" message style
let s:p.normal.error = [ [ s:red, s:darkgrey] ]
let s:p.normal.warning = [ [ s:brightyellow, s:darkgrey] ]

let g:lightline#colorscheme#mycolortheme#palette = lightline#colorscheme#fill(s:p)

