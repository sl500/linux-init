noremap <F3> :set list! list?<CR>
inoremap <F3> <C-o>:set list! list?<CR>
cnoremap <F3> <C-c>:set list! list?<CR>
noremap <F4> :%!xxd<CR>
noremap <F5> :%!xxd -r<CR>
inoremap <F4> <C-o>:%!xxd<CR>
inoremap <F5> <C-o>:%!xxd -r<CR>
cnoremap <F4> <C-c>:%!xxd<CR>
cnoremap <F5> <C-c>:%!xxd -r<CR>
:set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣


