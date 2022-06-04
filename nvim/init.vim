set path+=**


call plug#begin()
	Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'morhetz/gruvbox'
  " Plug 'sainnhe/sonokai'
  " Plug 'sheerun/vim-polyglot'
  Plug 'jeffkreeftmeijer/vim-numbertoggle'
  " Plug 'junegunn/fzf'
  Plug 'junegunn/vim-easy-align'
  " Plug 'ctrlpvim/ctrlp.vim'
  Plug 'Raimondi/delimitMate'
  Plug 'godlygeek/tabular'
  " Plug 'vim-python/python-syntax'
  Plug 'tomtom/tcomment_vim'
  Plug 'moll/vim-bbye'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'ap/vim-buftabline/', {'on':[]}
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Plug 'crosbymichael/vim-cfmt'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  " Plug 'tpope/vim-endwise'
  Plug 'Yggdroot/indentLine'
  " Plug 'Vimjas/vim-python-pep8-indent'
  Plug 'thinca/vim-quickrun'
  Plug 'mhinz/vim-sayonara'
  Plug 'mhinz/vim-startify'
  " Plug 'cespare/vim-toml'
  Plug 'ryanoasis/vim-devicons'
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
  " Plug 'alvan/vim-closetag'
  " Plug 'terryma/vim-multiple-cursors'
  Plug 'Xuyuanp/yanil'
  Plug 'NLKNguyen/papercolor-theme'

	" neovim
	Plug 'williamboman/nvim-lsp-installer'
	Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

:luafile ~/.config/nvim/lua/user/init.lua

set guicursor=i:block
" colorscheme PaperColor
colorscheme gruvbox
" dont save .netrwhist history
let g:netrw_dirhistmax=0

" Startify config
    let g:startify_custom_header = 0

" vim-javascript configs
    let g:javascript_plugin_jsdoc = 1
    let g:javascript_plugin_ngdoc = 1
    let g:javascript_plugin_flow = 1

" leader config
let mapleader = ","
let g:mapleader = ","

" Remove search highlight
nnoremap <leader><space> :nohlsearch<CR>

" QuickRun
nnoremap <leader>r :QuickRun<CR>
let g:quickrun_known_file_types = {
    \"py": ["!python3 %"],
    \"md": ["!okular %"],
	\"go": ["!go run %"]
  \}


" Buffer prev/next
nnoremap <C-x> :bnext<CR>
nnoremap <C-z> :bprev<CR>

" Better split switching
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Fast saving
nmap <leader>w :w!<cr>

" Center the screen
nnoremap <space> zz

" Move up and down on splitted lines (on small width screens)
map <Up> gk
map <Down> gj
map k gk
map j gj

" Just go out in insert mode
imap jk <ESC>l

nnoremap <F6> :setlocal spell! spell?<CR>

" Select search pattern howewever do not jump to the next one
nnoremap <leader>c :TComment<CR>
xmap <leader>c :TComment<CR>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

"nnoremap <leader>. :lcd %:p:h<CR>
autocmd BufEnter * silent! lcd %:p:h

" trim all whitespaces away
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Act like D and C
nnoremap Y y$

" Do not show stupid q: window
map q: :q

" sometimes this happens and I hate it
map :Vs :vs
map :Sp :sp

" Some useful quickfix shortcuts
":cc      see the current error
":cn      next error
":cp      previous error
":clist   list all errors
map <C-n> :cn<CR>
map <C-m> :cp<CR>

" Close quickfix easily
nnoremap <leader>a :cclose<CR>

nnoremap <silent> <leader>q :Sayonara<CR>


" ==================== Fugitive ====================
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gp :Gpush<CR>
vnoremap <leader>gb :Gblame<CR>

" =================== Vim-cfmt ===================
let g:cfmt_style = '-linux'
"autocmd BufWritePre *.c,*.h Cfmt

" ================== linuxsty ====================
"let g:linuxsty_patterns = ['/usr/src/', '/linux']

" ==================== Vim-go ====================
let g:go_fmt_fail_silently = 0
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_term_enabled = 1
let g:go_snippet_engine = "neosnippet"
let g:go_highlight_space_tab_error = 0
let g:Go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 0
let g:go_highlight_operators = 0
let g:go_highlight_build_constraints = 1


au FileType go nmap <Leader>s <Plug>(go-def-split)
au FileType go nmap <Leader>v <Plug>(go-def-vertical)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>l <Plug>(go-metalinter)

au FileType go nmap <leader>r  <Plug>(go-run)

au FileType go nmap <leader>b  <Plug>(go-build)
au FileType go nmap <leader>t  <Plug>(go-test)
au FileType go nmap <leader>dt  <Plug>(go-test-compile)
au FileType go nmap <Leader>d <Plug>(go-doc)

au FileType go nmap <Leader>e <Plug>(go-rename)

" neovim specific
if has('nvim')
  au FileType go nmap <leader>rt <Plug>(go-run-tab)
  au FileType go nmap <Leader>rs <Plug>(go-run-split)
  au FileType go nmap <Leader>rv <Plug>(go-run-vertical)
endif

" I like these more!
augroup go
  autocmd!
  autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
augroup END

" ==================== delimitMate ====================
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
let g:delimitMate_smart_quotes = 1
let g:delimitMate_expand_inside_quotes = 0
let g:delimitMate_smart_matchpairs = '^\%(\w\|\$\)'

" ==================== vim-mardownfmt ====================
" let g:markdownfmt_autosave = 1

" ==================== vim-multiple-cursors ====================
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-i>'
let g:multi_cursor_prev_key='<C-y>'
let g:multi_cursor_skip_key='<C-b>'
let g:multi_cursor_quit_key='<Esc>'

" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction

" ========= git-gutter ==================
" let g:gitgutter_diff_relative_to = 'working_tree'
let g:gitgutter_async = 1
let g:gitgutter_enabled = 1
" autocmd BufWritePost * GitGutter
" ========= vim-better-whitespace ==================

" auto strip whitespace except for file with extention blacklisted
let blacklist = ['markdown', 'md']
autocmd BufWritePre * StripWhitespace


" =================== vim-closetags ========================
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'
