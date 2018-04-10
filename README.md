## vim-spotify
Control spotify from vim.

To go to the next song:
```
<Leader>sn
```

To go the previous song
```
<Leader>sp
```

To Play/Pause
```
<Leader>s<Space>
```

To remap these keys, just add these lines to your vimrc and change as desired
```
nmap <Leader>sn <Plug>SpotifyNext
nmap <Leader>sp <Plug>SpotifyPrev
nmap <Leader>s<Space> <Plug>SpotifyPlayPause
```
