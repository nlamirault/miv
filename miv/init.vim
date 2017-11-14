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

" Default encoding to UTF-8
set encoding=utf-8
set termencoding=utf-8

" Enable 256 colors
set t_Co=256

let g:plugin_dir = expand('~/.cache/dein')
let g:dein_dir = g:plugin_dir . '/repos/github.com/Shougo/dein.vim'

execute 'set runtimepath+=' . g:dein_dir

if !isdirectory(g:dein_dir)
  call mkdir(g:dein_dir, 'p')
  execute '!git clone https://github.com/Shougo/dein.vim' g:dein_dir
endif
