"scriptencoding utf-8
"set encoding=utf-8
syntax on
set number
set background=dark
set tabstop=4
set autoindent

" F3 Whitespaces sichtbar anzeigen F3
noremap <F3> :set list! list?<CR>
inoremap <F3> <C-o>:set list! list?<CR>
cnoremap <F3> <C-c>:set list! list?<CR>

if has("patch-7.4.710")
    :set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
    "listchars=eol:~,tab:>.,trail:~,extends:>,precedes:<,space:_
else
    :set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
    "listchars=eol:~,tab:>.,trail:~,extends:>,precedes:<
endif

" F4 alles zu HEX, F5 alles zurück
noremap <F4> :%!xxd<CR>
noremap <F5> :%!xxd -r<CR>
inoremap <F4> <C-o>:%!xxd<CR>
inoremap <F5> <C-o>:%!xxd -r<CR>
cnoremap <F4> <C-c>:%!xxd<CR>
cnoremap <F5> <C-c>:%!xxd -r<CR>

" F6 Zeilennummern anzeigen F6
noremap <F6> :set number! number?<CR>
inoremap <F6> <C-o>:set number! number?<CR>
cnoremap <F6> <C-c>:set number! number?<CR>

" F7 Delete first charackter
noremap <F7> :%s/^.\{0,1\}//<CR>
inoremap <F7> <C-o>:%s/^.\{0,1\}//<CR>
cnoremap <F7> <C-c>:%s/^.\{0,1\}//<CR>

" F8 autoindent sichtbar anzeigen F3
noremap <F8> :set autoindent! autoindent?<CR>
inoremap <F8> <C-o>:set autoindent! autoindent?<CR>
cnoremap <F8> <C-c>:set autoindent! autoindent?<CR>


