" LaTeX-specific macros
inoremap <F1> &
inoremap <F2> $$<Esc>i
inoremap <F3> _\text{}<Esc>i
noremap <F7> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
inoremap <F4> \begin{align*}<CR>\end{align*}<Esc>O
inoremap <F5> \begin{pmatrix}<CR>\end{pmatrix}<Esc>O
inoremap <F6> \begin{enumerate}<CR>\end{enumerate}<Esc>O\item 
inoremap <F7> \left(\right)<Esc>hhhhhhi
inoremap <F8> \left[\right]<Esc>hhhhhhi
inoremap <F9> \frac{}<Esc>i
inoremap <F10> <Esc>?\\frac{<CR>f{%a{}<Esc>i
inoremap <F11> \ee^{}<Esc>i
inoremap <F12> <Esc>A

noremap <F3> o\item 
noremap <F4> :w<Bar>execute '!pdflatex --shell-escape '.shellescape(@%, 1)<CR>
noremap <F7> i\left<Esc>l%i\right<Esc>
