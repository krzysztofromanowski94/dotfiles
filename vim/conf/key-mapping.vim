" key-mapping.vim
"
" Maintained by Claud D. Park <posquit0.bj@gmail.com>
" http://www.posquit0.com/


" Map <leader> key
let mapleader=","
let g:mapleader=","
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Time to wait after ESC (default causes an annoying delay)
set timeoutlen=250

" Handy command-line mode
" nnoremap ; :
" <Esc> is too annoying to type
" inoremap jkj <Esc>
" Screen sucks, redraw everything
nnoremap <Leader>r :redraw!<CR>
" Make Q meaningless (Q: Entering to Ex mode) 
nnoremap Q <nop>
" Switching search-highlighting off until next search
nnoremap <silent> <Leader>/ :nohlsearch<CR>

" Quickly move current line above or below
nnoremap <C-k><C-k> :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap <C-j><C-j> :<c-u>execute 'move +'. v:count1<cr>

" Print absolute path of current file
nnoremap <C-w>p :echo expand('%:p')<cr>

" Toggle paste mode
nnoremap <C-p> :set paste!<cr>

" Swap current word with next, don't change cursor position
nnoremap <silent> gw "_yiw:s/\(\%#\w\+\)\(\W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>:nohlsearch<CR>

" search for visually hightlighted text (https://stackoverflow.com/a/15934899)
vnoremap <c-f> y<ESC>/<c-r>"<CR>

""" Hex Editor {{{
  " Map HexEditToggle to <F9>
  nnoremap <silent> <F9> :call HexEditToggle()<CR>
  let g:hexmode=0
  function! HexEditToggle()
    if g:hexmode
      let g:hexmode=0
      %!xxd -r
    else
      let g:hexmode=1
      %!xxd
    endif
  endfunction
" }}}
"
""" Scrolling
  nnoremap <Right> 3zl
  nnoremap <Left> 3zh
  nnoremap <Up> 3<C-y>
  nnoremap <Down> 3<C-e>

"""

""" Tabs {{{
  nnoremap <silent> <Tab><Tab> :tabnew<CR>
  nnoremap <silent> <Tab>q :tabclose<CR>
  nnoremap <silent> <Tab>s :tabs<CR>
  nnoremap <silent> <Tab>^ :tabfirst<CR>
  nnoremap <silent> <Tab>$ :tablast<CR>
  nnoremap <silent> <Tab>k :tabfirst<CR>
  nnoremap <silent> <Tab>j :tablast<CR>
  nnoremap <silent> <Tab>l :tabnext<CR>
  nnoremap <silent> <Tab>h :tabprevious<CR>
  nnoremap <silent> <Tab>n :tabnext<CR>
  nnoremap <silent> <Tab>p :tabprevious<CR>
  nnoremap <silent> <Tab><Right> :tabnext<CR>
  nnoremap <silent> <Tab><Left> :tabprevious<CR>
  nnoremap <silent> <Tab>1 :tabnext 1<CR>
  nnoremap <silent> <Tab>2 :tabnext 2<CR>
  nnoremap <silent> <Tab>3 :tabnext 3<CR>
  nnoremap <silent> <Tab>4 :tabnext 4<CR>
  nnoremap <silent> <Tab>5 :tabnext 5<CR>
  nnoremap <silent> <Tab>6 :tabnext 6<CR>
  nnoremap <silent> <Tab>7 :tabnext 7<CR>
  nnoremap <silent> <Tab>8 :tabnext 8<CR>
  nnoremap <silent> <Tab>9 :tabnext 9<CR>
" }}}
