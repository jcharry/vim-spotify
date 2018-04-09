function! g:Spotify(action)
  silent! execute "!../bash/spotify.sh -c ".a:action
endfunction

nnoremap <Leader>spn :<C-U>call g:Spotify("next")<CR>
nnoremap <Leader>spp :<C-U>call g:Spotify("previous")<CR>
nnoremap <Leader>sp<space> :<C-U>call g:Spotify("playpause")<CR>

