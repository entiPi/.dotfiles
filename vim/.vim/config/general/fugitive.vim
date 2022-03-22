" General fugitive configuration {{{
" delete fugitive buffer with git objects befor opening a new one
autocmd BufReadPost fugitive://* set bufhidden=delete
" }}}

" Fugitive Key Bindings {{{
nmap <leader>gs :Git<CR>
nmap <leader>gd :Gdiffsplit<CR>
nmap <leader>gc :Git commit<CR>
nmap <leader>gb :Git blame<CR>
nmap <leader>gl :Gclog<CR>
" }}}
