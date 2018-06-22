" Hide bottom bar text
set noshowmode

" TagBar
map <F8> :TagbarToggle<CR>

" NERDTree
map <F5> :NERDTreeToggle<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
map <F6> :SyntasticCheck<CR>

" let $TERM="xterm-256color"

" lightline configs
let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
        \ },
    \ 'component_function': {
        \   'gitbranch': 'fugitive#head'
    \ },
\ }

" Set solarized colorscheme
syntax enable
set background=light
let g:solarized_termcolors=256 "this is what fixed it for me
let g:solarized_termtrans = 1 " This gets rid of the grey background
colorscheme solarized
