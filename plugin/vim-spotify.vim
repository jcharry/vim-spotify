let s:path = expand('<sfile>:p:h')

function! s:spotify(action)
  silent! execute "!".s:path."/../lib/spotify.sh -c ".a:action
endfunction

nnoremap <silent> <Plug>SpotifyNext :<C-U>call <SID>spotify("next")<CR>
nnoremap <silent> <Plug>SpotifyPrev :<C-U>call <SID>spotify("previous")<CR>
nnoremap <silent> <Plug>SpotifyPlayPause :<C-U>call <SID>spotify("playpause")<CR>

if !hasmapto('<Plug>SpotifyNext', 'n') || maparg('<Leader>sn', 'n') ==# ''
  nmap <Leader>sn <Plug>SpotifyNext
endif
if !hasmapto('<Plug>SpotifyPrev', 'n') || maparg('<Leader>sp', 'n') ==# ''
  nmap <Leader>sp <Plug>SpotifyPrev
endif
if !hasmapto('<Plug>SpotifyPlayPause', 'n') || maparg('<Leader>s<Space>', 'n') ==# ''
  nmap <Leader>s<Space> <Plug>SpotifyPlayPause
endif


