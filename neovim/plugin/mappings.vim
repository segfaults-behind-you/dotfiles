" === Remaps ===

let mapleader=" "
nmap ; :

" fzf.vim mappings.
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>gf :GFiles<CR>
noremap <Leader>pf :ProjectFiles<CR>
nnoremap <Leader>b :Buffers<CR>

" Better movement between splits.
nmap <silent> <Leader>h :wincmd h<CR>
nmap <silent> <Leader>j :wincmd j<CR>
nmap <silent> <Leader>k :wincmd k<CR>
nmap <silent> <Leader>l :wincmd l<CR>

" Move splits around.
nmap <silent> <Leader>H <C-w>H
nmap <silent> <Leader>J <C-w>J
nmap <silent> <Leader>K <C-w>K
nmap <silent> <Leader>L <C-w>L
nnoremap <Leader>e :NERDTreeToggle<CR>
