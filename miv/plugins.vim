" Copyright (C) 2017 Nicolas Lamirault <nicolas.lamirault@gmail.com>
"
" Licensed under the Apache License, Version 2.0 (the "License");
" you may not use this file except in compliance with the License.
" You may obtain a copy of the License at
"
"     http://www.apache.org/licenses/LICENSE-2.0
"
" Unless required by applicable law or agreed to in writing, software
" distributed under the License is distributed on an "AS IS" BASIS,
" WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
" See the License for the specific language governing permissions and
" limitations under the License.

let plugin_path = expand('~/.cache/dein')

call dein#begin(g:plugin_dir)

" Let dein manage dein
call dein#add('Shougo/dein.vim')

" ===== Plugins =====

" utility for Dein
call dein#add('haya14busa/dein-command.vim')

" completion
call dein#add('Shougo/deoplete.nvim')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif

" shell
call dein#add('Shougo/vimshell.vim')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/vimfiler.vim')
call dein#add('Shougo/vimproc.vim', {
    \ 'build': {
    \     'windows': 'tools\\update-dll-mingw',
    \     'cygwin': 'make -f make_cygwin.mak',
    \     'mac': 'make -f make_mac.mak',
    \     'linux': 'make',
    \     'unix': 'gmake',
    \    },
    \ })
call dein#add('Shougo/denite.nvim')

call dein#add('scrooloose/nerdtree')
call dein#add('jistr/vim-nerdtree-tabs')

call dein#add('vim-syntastic/syntastic')

" ui
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')

" python
call dein#add('zchee/deoplete-jedi')

" go
call dein#add('zchee/deoplete-go', {'build': 'make'})


call dein#end()
call dein#save_state()

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
