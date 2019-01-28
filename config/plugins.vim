" Copyright (C) 2017-2019 Nicolas Lamirault <nicolas.lamirault@gmail.com>
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

scriptencoding utf-8

let plugin_path = expand('~/.cache/dein')

call dein#begin(g:plugin_dir)

" Let dein manage dein
call dein#add('Shougo/dein.vim')

" ===== Plugins =====

" utility for Dein
call dein#add('haya14busa/dein-command.vim')

" autocompletion
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

" files
call dein#add('scrooloose/nerdtree')
call dein#add('jistr/vim-nerdtree-tabs')
call dein#add('majutsushi/tagbar')
call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0})
call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

call dein#add('mhinz/vim-grepper')

call dein#add('scrooloose/nerdcommenter')

" vc
call dein#add('tpope/vim-fugitive')
call dein#add('junegunn/gv.vim')
call dein#add('lambdalisue/gina.vim')

" devel
" call dein#add('vim-syntastic/syntastic')
call dein#add('w0rp/ale')
call dein#add('sheerun/vim-polyglot')
call dein#add('tpope/vim-commentary')

" python
call dein#add('zchee/deoplete-jedi')
call dein#add('jmcantrell/vim-virtualenv')

" go
call dein#add('fatih/vim-go.git')
call dein#add('zchee/deoplete-go', {'build': 'make'})

call dein#add('mhinz/vim-startify')

" look
call dein#add('joshdick/onedark.vim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('ryanoasis/vim-devicons')
call dein#add('dylanaraps/wal.vim')

call dein#end()
call dein#save_state()

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
