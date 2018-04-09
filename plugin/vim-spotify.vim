function! s:spotify(action)
  echo "SOMETHING"
  silent! execute "!../bash/spotify.sh -c ".a:action
endfunction

nnoremap <silent> <Plug>SpotifyNext :<C-U>call <SID>spotify("next")<CR>
nnoremap <silent> <Plug>SpotifyPrev :<C-U>call <SID>spotify("previous")<CR>
nnoremap <silent> <Plug>SpotifyPlayPause :<C-U>call <SID>spotify("playpause")<CR>

if !hasmapto('<Plug>SpotifyNext', 'n') || maparg('<Leader>spn', 'n') ==# ''
  nmap <Leader>spn <Plug>SpotifyNext
endif

