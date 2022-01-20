Plug 'dracula/vim', { 'as': 'dracula' }
Plug '/home/gilson/Drive/Dracula_PRO/themes/vim', { 'as': 'dracula-pro'}

let g:dracula_colorterm = 0

augroup DraculaOverrides
    autocmd!
    autocmd User PlugLoaded ++nested colorscheme dracula_pro
augroup end

