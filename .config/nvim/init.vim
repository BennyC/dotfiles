scriptencoding utf-8

call plug#begin('~/.vim/plugged')
  Plug 'phanviet/vim-monokai-pro'
  Plug 'ayu-theme/ayu-vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'nathanaelkane/vim-indent-guides'

  Plug 'yuezk/vim-js'
  Plug 'ianks/vim-tsx'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'leafgarland/typescript-vim'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'neoclide/coc-prettier', { 'do': 'yarn install --frozen-lockfile' }

  Plug 'preservim/nerdtree'
  Plug 'dense-analysis/ale'
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/goyo.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'wakatime/vim-wakatime'


  let g:coc_global_extensions = ['coc-json', 'coc-yank', 'coc-prettier', 'coc-go', 'coc-phpls']
call plug#end()

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

set showtabline=2

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:>

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden!
set bufhidden=unload

" Rendering
set ttyfast

" Status bar
set laststatus=1

" Last line
set showmode

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬

" Color scheme (terminal)
set t_Co=256
set termguicolors
let ayucolor="dark"
colorscheme ayu
highlight Normal guibg=none
highlight NonText guibg=none
set guitablabel=%t
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#fnamemod = ':t'

" mappings
map <leader>q gqip
imap jj <ESC>
nmap <leader>rn <Plug>(coc-rename)
nnoremap <silent> K :call <SID>show_documentation()<CR>
inoremap <silent><expr> <c-space> coc#refresh()
map <C-n> :NERDTreeToggle<CR>
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>tt :CocList outline<CR>
nmap <C-b> <Plug>(coc-definition)
nnoremap <F5> mzgggqG`z
nnoremap <silent> <C-p> :Files<CR>


set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

command! -nargs=0 Format :call     CocAction('format')
command! -nargs=? Fold   :call     CocAction('fold', <f-args>)
command! -nargs=0 OR     :call     CocAction('runCommand', 'editor.action.organizeImport')

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd CursorHold * silent call CocActionAsync('highlight')

au BufRead,BufNewFile *.go set filetype=go

let g:NERDTreeWinSize=40
let g:NERDTreeIgnore = ['^bazel-', '^build$']

set autowrite

let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

let g:go_auto_sameids = 1
let g:go_auto_type_info = 1
set updatetime=100
