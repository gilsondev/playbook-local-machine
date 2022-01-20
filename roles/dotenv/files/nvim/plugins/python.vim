let g:python_host_prog = '/home/gilson/.pyenv/versions/tools3/bin/python'
let g:python3_host_prog = '/home/gilson/.pyenv/versions/tools3/bin/python'

augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79,120
      \ formatoptions+=croq softtabstop=4
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END
