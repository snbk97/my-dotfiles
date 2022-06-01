
" ================= clang-format ==================

" map <C-K> :pyf /usr/share/clang/clang-format.py<cr>
" imap <C-K> <c-o>:py3f /usr/share/clang/clang-format.py<cr>
" autocmd BufWritePre *.cpp,*.hpp py3f /usr/share/clang/clang-format.py

" ----------------------------------------- "
" File Type settings 			    		"
" ----------------------------------------- "

au BufNewFile,BufRead *.vim setlocal noet ts=4 sw=4 sts=4
au BufNewFile,BufRead *.txt setlocal noet ts=4 sw=4
au BufNewFile,BufRead *.md setlocal spell noet ts=4 sw=4
au BufNewFile,BufRead *.yml,*.yaml setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.cpp setlocal expandtab ts=4 sw=4
au BufNewFile,BufRead *.hpp setlocal expandtab ts=4 sw=4
au BufNewFile,BufRead *.json setlocal expandtab ts=4 sw=4
au BufNewFile,BufRead *.jade setlocal expandtab ts=4 sw=4

augroup filetypedetect
  au BufNewFile,BufRead .tmux.conf*,tmux.conf* setf tmux
  au BufNewFile,BufRead .nginx.conf*,nginx.conf* setf nginx
  au BufNewFile,BufRead *.jade setf pug
augroup END

au FileType nginx setlocal noet ts=4 sw=4 sts=4

" Go settings
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4
" autocmd BufEnter *.go colorscheme nofrils-dark

"cpp settings
autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp
au BufNewFile,BufRead *.cpp setlocal expandtab ts=2 sw=2

" scala settings
autocmd BufNewFile,BufReadPost *.scala setl shiftwidth=2 expandtab

" Markdown Settings
autocmd BufNewFile,BufReadPost *.md setl ts=4 sw=4 sts=4 expandtab

" lua settings
autocmd BufNewFile,BufRead *.lua setlocal noet ts=4 sw=4 sts=4

" Dockerfile settings
autocmd FileType dockerfile set noexpandtab

" shell/config/systemd settings
autocmd FileType fstab,systemd set noexpandtab
autocmd FileType gitconfig,sh,toml set noexpandtab

" python indent
autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 smarttab expandtab

" toml settings
au BufRead,BufNewFile MAINTAINERS set ft=toml

" spell check for git commits
autocmd FileType gitcommit setlocal spell

