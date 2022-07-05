" =====================================
"          _ _ (_)._ _ _  _ _  ___ 
"       _ | | || || ' ' || '_>/ | '
"      (_)|__/ |_||_|_|_||_|  \_|_.
"
" =====================================

" Syntax Highlighting & Line Numbering
colorscheme budgetnord
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors
filetype plugin on
set nocompatible
syntax on
set number
set list
" set listchars=space:·

autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber 
set shiftwidth=4
set tabstop=4


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
Plug 'Yggdroot/indentLine'
call plug#end()

" Vimwiki
let g:vimwiki_list = [{'path': '~/.vimwiki/'}]

" coc.nvim
let g:coc_node_path = '/usr/bin/node'

" lightline
set laststatus=2
"let g:lightline = {
"  \ 'colorscheme' : 'budgetnord',
"  \ }

" Keybindings
nnoremap <F1> :<c-u>update<cr>
nnoremap <F4> :<c-u>wq!<cr> 
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-/> :NERDTreeFind<CR>

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

