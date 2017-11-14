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

scriptencoding utf-8

" Version of Miv, this value can not be changed.
let g:miv_version = '0.1.0'
lockvar g:miv_version

 let g:startify_custom_header = [
    \ '',
    \ '           Miv -- A Neovim configuration',
    \ '',
    \'        version: ' . g:miv_version . '   by : Nicolas Lamirault',
    \ '',
    \ ]

let g:startify_list_order = [
      \ ['   MRU '],       'files' ,
      \ ['   MRU DIR '],   'dir',
      \ ['   Sessions '],  'sessions',
      \ ['   Bookmarks '], 'bookmarks',
      \ ]

let g:startify_skiplist = [
      \ 'COMMIT_EDITMSG',
      \ 'bundle/.*/doc',
      \ ]

let g:startify_bookmarks = [
    \ { 'v': '~/.config/nvim/init.vim' },
    \ { 'h': '~/'},
    \ ]

let g:startify_change_to_dir          = 0
let g:startify_enable_special         = 0
let g:startify_files_number           = 8
