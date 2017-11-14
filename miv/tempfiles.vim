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

" Save your backups to a less annoying place than the current directory.
if isdirectory($HOME . '/.cache/nvim/backup') == 0
  :silent !mkdir -p ~/.cache/nvim/backup >/dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.cache/nvim/backup/
set backupdir^=./.cache/nvim-backup/
set backup

" Save your swp files to a less annoying place than the current directory.
if isdirectory($HOME . '/.cache/nvim/swap') == 0
  call mkdir($HOME . '/.cache/nvim/swap', 'p')
endif
set directory=./.cache/nvim-swap//
set directory+=~/.cache/nvim/swap//
set directory+=~/tmp//
set directory+=.
