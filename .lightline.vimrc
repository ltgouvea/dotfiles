let g:lightline = {
   \ 'colorscheme': 'wal',
   \   'active': {
   \     'left':[ [ 'mode', 'paste' ],
   \              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
   \     ],
   \   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
  \   }
   \ }
let g:lightline.tabline = {
  \   'left': [ ['tabs'] ],
  \     'right': [ ], 
  \ }
set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline
let g:lightline.separator = {
    \   'left': '', 'right': ''
  \}
let g:lightline.subseparator = {
    \   'left': '', 'right': '' 
  \}
