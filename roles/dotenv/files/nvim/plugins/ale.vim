
Plug 'dense-analysis/ale', { 'do': 'pip install flake8 isort black' }
let g:ale_linters = {}
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'python': [
\       'isort',
\       'black',
\       'remove_trailing_lines',
\       'trim_whitespace'
\   ]
\}