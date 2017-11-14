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

nmap <F8> :TagbarToggle<CR>

let g:tagbar_left = get(g:, 'tagbar_left', 1)
let g:tagbar_sort = get(g:, 'tagbar_sort', 0)
let g:tagbar_compact = get(g:, 'tagbar_compact', 1)
let g:tagbar_map_showproto = get(g:, 'tagbar_map_showproto', '')
