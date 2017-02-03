exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list
set nu

" use visual bell instead of beeping
set vb

" incremental search
set incsearch

" syntax highlighting
set bg=dark
syntax on

" autoindent
autocmd FileType perl set autoindent|set smartindent

" 4 space tabs
autocmd FileType perl set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4

" show matching brackets
autocmd FileType perl set showmatch


" check perl code with :make
autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set autowrite

" make tab in v mode ident code
vmap <tab> >gv
vmap <s-tab> <gv

" make tab in normal mode ident code
nmap <tab> I<tab><esc>
nmap <s-tab> ^i<bs><esc>

" my perl includes pod
let perl_include_pod = 1

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1


" disable visual mode on select with mouse
set mouse-=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

