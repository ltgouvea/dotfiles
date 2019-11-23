let g:lightline = {
   \ 'colorscheme': 'wal',
   \   'active': {
   \   'left': [ [ 'mode' ], [ 'rebel', 'paste' ],
   \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ],
   \    'right': [ [ 'lineinfo', 'syntastic' ],
   \               [ 'percent' ],
   \               [ 'gitbranch', 'fileformat', 'fileencoding', 'filetype' ] ]
   \ },
   \   'component_function': {
   \     'gitbranch': 'fugitive#head',
   \     'cocstatus': 'coc#status',
   \     'currentfunction': 'CocCurrentFunction',
   \     'syntastic': 'SyntasticStatuslineFlag',
   \   },
   \  'component': {
   \    'rebel': "\uf1d0"
   \  }
   \ }
let g:lightline.tabline = {
            \   'left': [ ['tabs'] ],
            \     'right': [ ], 
            \ }
set showtabline=2
set guioptions-=e
