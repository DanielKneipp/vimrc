" Hide bottom bar text
set noshowmode

" Don't move the cursor after highlighting a word with *
nnoremap * *``

" Disable left margin
set foldcolumn=0

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
map <F6> :SyntasticReset<CR>

" EasyAlign
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)"

" YouCompleteMe
let g:ycm_goto_buffer_command = 'new-or-existing-tab'
let g:ycm_autoclose_preview_window_after_insertion = 1

" ctrlp
" If a file is already open, open it again in a new pane instead of switching to the existing pane
let g:ctrlp_switch_buffer = 'et'

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
" let g:solarized_termcolors=256 "this is what fixed it for me
" let g:solarized_termtrans = 1 " This gets rid of the grey background
colorscheme solarized
