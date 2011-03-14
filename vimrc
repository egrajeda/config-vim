" GENERAL

" Me gusta usar espacios, no tabulación
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4

" Prefiero no tener backups
set nobackup
set nowritebackup
set noswapfile

syntax on

set nowrap
set autoindent

" APARIENCIA

" Creo que esto es lo mínimo que necesito
set guioptions=a

" Con una DPI de 87 esta fuente se ve perfecta
set guifont=Inconsolata\ 10

" Mi versión modificada de molokai (yo le quité lo bold)
let g:molokai_original = 1
colorscheme molokai

" En algún lugar vi esto, y me pareció bueno ponerlo :P, te muestra los
" fines de linea y los espacios extras al final de las lineas
set listchars=eol:¶,trail:•
set list
hi NonText    guifg=#373832 guibg=bg
hi SpecialKey guifg=#676862 guibg=bg

" KEYBINDINGS

" Es más conveniente para no tener que estar apretando Shift
nm , :
