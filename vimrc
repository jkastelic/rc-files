filetype plugin indent on
syntax on
colorscheme torte

set number
set shiftwidth=3
set ignorecase
set autoindent
set incsearch
set lbr
set timeoutlen=0
set hidden
set splitbelow
set splitright
set expandtab

noremap k gk
noremap j gj
noremap Q <Nop>
noremap K <C-w><C-w>

noremap <C-P> <C-b>
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>

noremap <F1> <Esc>:tabp<CR>
noremap <F2> <Esc>:tabn<CR>
inoremap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
"<F4> reserved for compling (see .vim/after/ftplugin)
noremap <F5> :buffers<CR>
set pastetoggle=<F6>
noremap <F7> @a

set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

"map <C-[> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

execute pathogen#infect()
