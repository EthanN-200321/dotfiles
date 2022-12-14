" =====================================
"          _ _ (_)._ _ _  _ _  ___ 
"       _ | | || || ' ' || '_>/ | '
"      (_)|__/ |_||_|_|_||_|  \_|_.
"
" =====================================

" Syntax Highlighting & Line Numbering
colorscheme colourscheme
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors
filetype plugin on
set nocompatible
syntax on
set number
set list
set listchars=space:·

autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber 
set tabstop=4 shiftwidth=4 expandtab
set hlsearch


" Plugins
call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'BourgeoisBear/clrzr'
Plug 'vimwiki/vimwiki'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/tagbar'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'itchyny/lightline.vim'
Plug 'kien/rainbow_parentheses.vim'
call plug#end()


" NerdTree
let NERDTreeIgnore = [ '__pycache__', '\.pyc$', '\.o$', '\.swp',  '*\.swp',  'node_modules/'] "
let NERDTreeMapOpenInTab='<C-<ENTER>>'
let NERDTreeShowHidden=1

" Vimwiki
let g:vimwiki_list = [{'path': '~/.vimwiki/'}]

" coc.nvim
let g:coc_node_path = '/usr/bin/node'
autocmd FileType python let b:coc_root_patterns = ['.git', '.env']

" lightline
set laststatus=2
let g:lightline = {
  \ 'colorscheme' : 'budgetnord',
  \ }

" Keybindings
nnoremap <F1> :<c-u>update<cr>
nnoremap <F4> :<c-u>wq!<cr> 
nnoremap <C-S> :<c-u>TagbarToggle<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap \ : nohl<CR>


inoremap <silent><expr> <TAB>
  \ pumvisible() ? coc#_select_confirm() :
  \ coc#expandableOrJumpable() ?
  \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()

    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    let g:coc_snippet_next = '<tab>'

nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

