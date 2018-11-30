"scriptencoding utf-8
"set encoding=utf-8
syntax on
set background=dark

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
inoremap <F4> <C-o>:%!xxd<CR>
cnoremap <F4> <C-c>:%!xxd<CR>

noremap <F5> :%!xxd -r<CR>
inoremap <F5> <C-o>:%!xxd -r<CR>
cnoremap <F5> <C-c>:%!xxd -r<CR>

" F6 Zeilennummern anzeigen F6
noremap <F6> :set number!<CR>
inoremap <F6> <C-o>:set number!<CR>
cnoremap <F6> <C-c>:set number!<CR>
