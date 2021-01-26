" === Remaps ===

let mapleader=" "
nmap ; :

" Telescope mappings.
nnoremap <Leader>f :Telescope find_files<CR>
nnoremap <Leader>gf :Telescope live_grep<CR>
nnoremap <Leader>b :Telescope buffers<CR>

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

" Undotree
nnoremap <F5> :UndotreeToggle<CR>

" Use system clipboard
nnoremap <Leader>p "+p
nnoremap <Leader>y "+y

vnoremap <leader>P "_dP
