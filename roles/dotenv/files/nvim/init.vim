" ==============================================================================
"    Personal vim configuration based on Jess Archer <jess@jessarcher.com>
" ==============================================================================

"--------------------------------------------------------------------------
" General settings
"--------------------------------------------------------------------------

set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=0
set hidden
set signcolumn=yes:2
set number
set termguicolors
set undofile
set nospell
set title
set ignorecase
set smartcase
set wildmode=longest:full,full
set nowrap
set list
set listchars=tab:▸\ ,trail:·
set mouse=a
set scrolloff=8
set sidescrolloff=8
set nojoinspaces
set splitright
set clipboard=unnamedplus
set confirm
set exrc
set nobackup
set updatetime=300 " Reduce time for highlighting other references
set redrawtime=10000 " Allow more time for loading syntax on large files
set backspace=indent,eol,start
set modifiable
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast

"--------------------------------------------------------------------------
" Key maps
"--------------------------------------------------------------------------

let mapleader=','

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

nmap <leader>ve :edit ~/.dotenv/nvim/init.vim<cr>
nmap <leader>vc :edit ~/.dotenv/nvim/coc-settings.json<cr>
nmap <leader>vr :source ~/.dotenv/nvim/init.vim<cr>

nmap <leader>k :nohlsearch<CR>
nmap <leader>Q :bufdo bdelete<cr>

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

" Allow gf to open non-existent files
map gf :edit <cfile><cr>

" Maintain the cursor position when yanking a visual selection
" http://ddrscott.github.io/blog/2016/yank-without-jank/
vnoremap y myy`y
vnoremap Y myY`y

" Open the current file in the default program
nmap <leader>x :!xdg-open %<cr><cr>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" format JSON
nmap =j :%!python -m json.tool<CR>

"" Buffer nav
noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>

"" Close buffer
noremap <leader>c :bd<CR>

"--------------------------------------------------------------------------
" Plugins
"--------------------------------------------------------------------------

" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(expand('~/.config/nvim/plugged'))

source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/ale.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/dracula.vim
source ~/.config/nvim/plugins/editorconfig.vim
source ~/.config/nvim/plugins/eunuch.vim
source ~/.config/nvim/plugins/firenvim.vim
source ~/.config/nvim/plugins/floaterm.vim
source ~/.config/nvim/plugins/fugitive.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/lastplace.vim
source ~/.config/nvim/plugins/indent-guide.vim
source ~/.config/nvim/plugins/make.vim
source ~/.config/nvim/plugins/markdown-preview.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/pasta.vim
source ~/.config/nvim/plugins/polyglot.vim
source ~/.config/nvim/plugins/python.vim
source ~/.config/nvim/plugins/surround.vim
source ~/.config/nvim/plugins/tmux-navigator.vim
source ~/.config/nvim/plugins/visual-multi.vim

call plug#end()
doautocmd User PlugLoaded

"--------------------------------------------------------------------------
" Miscellaneous
"--------------------------------------------------------------------------

augroup FileTypeOverrides
  autocmd!
  " Use '//' instead of '/* */' comments
  autocmd FileType php setlocal commentstring=//%s
  autocmd TermOpen * setlocal nospell
augroup END
