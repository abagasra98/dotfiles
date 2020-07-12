call plug#begin()

" Themes
Plug 'drewtempelmeyer/palenight.vim'

" Enhancements
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'

" Comfort
Plug 'tpope/vim-sleuth'
Plug 'jiangmiao/auto-pairs'
 
" Languages
Plug 'sheerun/vim-polyglot'

call plug#end()

inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

set termguicolors

colorscheme palenight
set background=dark

hi Normal guibg=NONE ctermbg=NONE

syntax on

set nowrap
set noshowmode
set autoindent
set number relativenumber
set mouse=a

" Code Folding
set foldenable
set foldmethod=syntax
set foldlevel=99

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-s> :w<CR>
" Ω is alt + z
nnoremap Ω :Goyo<CR>

let g:python_highlight_all=1

let g:goyo_width = '80%'
" let g:goyo_height = '90%'

function! s:goyo_enter()
  let b:quitting = 0
  let b:quitting_bang = 0
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! s:goyo_leave()
  " Quit Vim if this is the only remaining buffer
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
endfunction

autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
" autocmd VimEnter * Goyo 

source ~/.config/nvim/statusline.vim
