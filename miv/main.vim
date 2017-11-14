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

if &compatible
  set nocompatible
endif

let $VIMPATH = fnamemodify(resolve(expand('<sfile>:p')), ':h:h')
let $VARPATH = expand(($XDG_CACHE_HOME ? $XDG_CACHE_HOME : '~/.cache').'/vim')

let g:MAC = has('macunix')
let g:LINUX = has('unix') && !has('macunix') && !has('win32unix')
let g:WINDOWS = has('win16') || has('win32') || has('win64')
let g:config_root = fnamemodify(expand('<sfile>'), ':p:h:gs?\\?'.((g:WINDOWS)?'\':'/') . '?')


fu! s:source_rc(path, ...) abort "{{{
  if filereadable(g:config_root. '/' . a:path)
    " echom 'source ' . g:config_root . '/' . a:path
    execute 'source ' . g:config_root . '/' . a:path
  endif
endf "}}}


if has('vim_starting')
  call s:source_rc('init.vim')
endif

" Plugins setup
call s:source_rc('plugins.vim')

" Plugins customization
call s:source_rc('plugins/airline.vim')
call s:source_rc('plugins/syntastic.vim')
