" Hide bottom bar text
set noshowmode

" Don't move the cursor after highlighting a word with *
nnoremap * *``

" Disable left margin
set foldcolumn=0

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
map <leader>sr :SyntasticReset<CR>

" Fugitive
let g:solarized_diffmode = 'high'
set diffopt+=vertical
map <leader>gr :bufdo diffoff<CR>
map <leader>grr :windo diffoff<CR>
map <leader>gs :Gstatus<CR>
map <leader>gc :Gcommit<CR>
map <leader>gp :Gpush<CR>
map <leader>gd :Gdiff<CR>
map <leader>ghd :Ghdiff<CR>

" EasyAlign
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap <leader>ea <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap <leader>ea <Plug>(EasyAlign)"

" YouCompleteMe
let g:ycm_goto_buffer_command = 'new-or-existing-tab'
let g:ycm_autoclose_preview_window_after_insertion = 1
" Fix the error with c code: `ValueError: Still no compile flags, no completions yet`
" The first file is not working. Error: `AttributeError: 'module' object has no attribute 'FlagsForFile'`
" let g:ycm_global_ycm_extra_conf = '~/.vim_runtime/sources_non_forked/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.vim_runtime/sources_non_forked/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
map <leader>ygt :YcmCompleter GoTo<CR>
map <leader>ygtr :YcmCompleter GoToReferences<CR>
map <leader>ygtd :YcmCompleter GoToDefinition<CR>

" ctrlp
" If a file is already open, open it again in a new pane instead of switching to the existing pane
let g:ctrlp_switch_buffer = 'et'
" Show hidden files
let g:ctrlp_show_hidden = 1

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
