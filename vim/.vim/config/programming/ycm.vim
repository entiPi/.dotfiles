" General YouCompleteMe configuration {{{
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/config/programming/ycm_extra_conf.py'
let g:ycm_clangd_args=['--header-insertion=never']
" }}}

" ycm Key Bindings {{{
map <C-]> :YcmCompleter GoToDeclaration<CR>
map <C-}> :YcmCompleter GoToDefinition<CR>
" }}}
