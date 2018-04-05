set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

set nu
set hlsearch
set ruler
set autoindent
set shiftwidth=4
set backspace=2
set tabstop=4
syntax on
:inoremap ( ()<ESC>i
:inoremap de< de<><ESC>i
:inoremap [ []<ESC>i
:inoremap {<CR> {}<ESC>i<CR><ESC>ko
imap jj <ESC>
imap ii <ESC>la
imap ooo <ESC>o
imap hh <ESC>la
imap ttttt #include<iostreamooo#include<cstdiojjo#include<cstringooo#include<stringooo#include<setooo#include<queueooo#include<algorithmooo#include<vectorooo#include<cstdlibooo#include<cmathooo#include<ctimeooo#include<stackooo#define rez(i,x,yii for(int i=x;i>=y;i--ooo#define res(i,x,yii for(int i=x;i<=y;i++ooo#define INF 2100000000ooo#define ll long longooo#define clr(xii  memset(x,0,sizeof(xiiiioooooousing namespace std;ooojjkkkkkjjo
imap () ()
imap [] []
imap {} {}
imap ffin for(int i=1;i<=n;i++jjla
imap ffim for(int i=1;i<=m;i++jjla
imap ffjn for(int j=1;j<=n;j++jjla
imap ffjm for(int j=1;j<=m;j++jjla
imap uuu jjua
imap <C-H> <ESC>i
imap <C-L> <ESC>la
imap <C-K> <ESC>ka
imap <C-J> <ESC>ja

map <F11> :call Run()<CR>
func! Run()
  exec "w"
  exec "!g++ % -o %<"
  exec "!%<"
endfunc

map <F10> :call Debug()<CR>
func! Debug()
  exec "w"
  exec "!g++ % -o %< -g"
  exec "!gdb %<"
endfunc
syntax enable
syntax on
set nu
set t_Co=256
set background=dark
colorscheme lemokoai

set guifont=Consolas:h16
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MYDIIF()
function MYDIIF()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . 
endfunction



