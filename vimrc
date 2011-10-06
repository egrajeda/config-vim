" Voy a empezar a usar Vim en la terminal, asi que me gustaría activar los
" 256 colores
set t_Co=256

" Me gusta usar espacios, no tabulación
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4

" Prefiero no tener backups
set nobackup
set nowritebackup
set noswapfile

" Cuando usas autocompletación de archivos, que arriba te muestre un listado
" de las posibles ocurrencias
set wildmode=longest,full
set wildmenu

syntax on

set nowrap
set autoindent

" APARIENCIA

" Creo que esto es lo mínimo que necesito
set guioptions=a

" En Ubuntu con DPI 77 se ve mejor este tamaño
set guifont=Inconsolata\ 12

" Mi propio tema
colorscheme champoo

" Siempre mostrar la barra de estado
set laststatus=2

set number
set numberwidth=5

set showmatch
set incsearch

" En algún lugar vi esto, y me pareció bueno ponerlo :P, te muestra los
" fines de linea y los espacios extras al final de las lineas
set listchars=eol:¶,trail:•,tab:××
set list

" Es más conveniente para no tener que estar apretando Shift
nm , :

fun! CheckPHPSyntax()
    let error = substitute(system("php -l " . expand("%") .  " 2>&1 | sed 's/.*\ //g' | head -n 1 | grep '^[0-9]\\+$'"), "\n", "", "")
    if error
        hi StatusLine ctermbg=231 ctermfg=196
        exe "normal" error . "gg"
    else
        hi StatusLine ctermbg=253 ctermfg=238
    endif
endfunction
au! BufWritePost *.php call CheckPHPSyntax()

let &t_SI = "\033]12;white\007"
let &t_EI = "\033]12;white\007"

" Estos son algunos errores comunes que hago cuando programo
iab This this
