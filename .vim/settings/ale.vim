" Jump quickly between ALE warnings/errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_fixers = {
  \ 'javascript': ['eslint'],
  \ 'css': ['prettier'],
  \ }

let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \ }

let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1
