"			          _____                    _____                    _____                    _____                   _______                   _____                    _____                _____          
"			         /\    \                  /\    \                  /\    \                  /\    \                 /::\    \                 /\    \                  /\    \              /\    \         
"			        /::\    \                /::\    \                /::\    \                /::\____\               /::::\    \               /::\____\                /::\    \            /::\    \        
"			       /::::\    \              /::::\    \              /::::\    \              /:::/    /              /::::::\    \             /::::|   |               /::::\    \           \:::\    \       
"			      /::::::\    \            /::::::\    \            /::::::\    \            /:::/    /              /::::::::\    \           /:::::|   |              /::::::\    \           \:::\    \      
"			     /:::/\:::\    \          /:::/\:::\    \          /:::/\:::\    \          /:::/    /              /:::/~~\:::\    \         /::::::|   |             /:::/\:::\    \           \:::\    \     
"			    /:::/__\:::\    \        /:::/__\:::\    \        /:::/__\:::\    \        /:::/____/              /:::/    \:::\    \       /:::/|::|   |            /:::/__\:::\    \           \:::\    \    
"			   /::::\   \:::\    \      /::::\   \:::\    \      /::::\   \:::\    \      /::::\    \             /:::/    / \:::\    \     /:::/ |::|   |           /::::\   \:::\    \          /::::\    \   
"			  /::::::\   \:::\    \    /::::::\   \:::\    \    /::::::\   \:::\    \    /::::::\    \   _____   /:::/____/   \:::\____\   /:::/  |::|___|______    /::::::\   \:::\    \        /::::::\    \  
"			 /:::/\:::\   \:::\ ___\  /:::/\:::\   \:::\    \  /:::/\:::\   \:::\____\  /:::/\:::\    \ /\    \ |:::|    |     |:::|    | /:::/   |::::::::\    \  /:::/\:::\   \:::\    \      /:::/\:::\    \ 
"			/:::/__\:::\   \:::|    |/:::/  \:::\   \:::\____\/:::/  \:::\   \:::|    |/:::/  \:::\    /::\____\|:::|____|     |:::|    |/:::/    |:::::::::\____\/:::/__\:::\   \:::\____\    /:::/  \:::\____\
"			\:::\   \:::\  /:::|____|\::/    \:::\  /:::/    /\::/    \:::\  /:::|____|\::/    \:::\  /:::/    / \:::\    \   /:::/    / \::/    / ~~~~~/:::/    /\:::\   \:::\   \::/    /   /:::/    \::/    /
"			 \:::\   \:::\/:::/    /  \/____/ \:::\/:::/    /  \/_____/\:::\/:::/    /  \/____/ \:::\/:::/    /   \:::\    \ /:::/    /   \/____/      /:::/    /  \:::\   \:::\   \/____/   /:::/    / \/____/ 
"			  \:::\   \::::::/    /            \::::::/    /            \::::::/    /            \::::::/    /     \:::\    /:::/    /                /:::/    /    \:::\   \:::\    \      /:::/    /          
"			   \:::\   \::::/    /              \::::/    /              \::::/    /              \::::/    /       \:::\__/:::/    /                /:::/    /      \:::\   \:::\____\    /:::/    /           
"			    \:::\  /:::/    /               /:::/    /                \::/____/               /:::/    /         \::::::::/    /                /:::/    /        \:::\   \::/    /    \::/    /            
"			     \:::\/:::/    /               /:::/    /                  ~~                    /:::/    /           \::::::/    /                /:::/    /          \:::\   \/____/      \/____/             
"			      \::::::/    /               /:::/    /                                        /:::/    /             \::::/    /                /:::/    /            \:::\    \                              
"			       \::::/    /               /:::/    /                                        /:::/    /               \::/____/                /:::/    /              \:::\____\                             
"			        \::/____/                \::/    /                                         \::/    /                 ~~                      \::/    /                \::/    /                             
"			         ~~                       \/____/                                           \/____/                                           \/____/                  \/____/                              

" After applying changes to this file use: [:so %] for the changes to take the effect
" without reloading the Vim.

" Make vim not compatible with Vi, use new features.
set nocompatible

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

" Gruvbox colorscheme
Plug 'morhetz/gruvbox'

" Fancy status bar.
Plug 'vim-airline/vim-airline'

" fzf, super fast searching! Gotta go fast!
" Install RipGrep for some sexy :Rg action.
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Sweet, sweet completion.
Plug 'OmniSharp/omnisharp-vim'
Plug 'nickspoons/vim-sharpenup'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Initialize plugin system
call plug#end()

" Some basic vim options 
syntax on
set background=dark
set number
" Turn off the message about current mode. We've got airline baby!
set noshowmode
" Pedantic stuff - draw a column at 80th character, try to fit your text!
set colorcolumn=80
" Use relative line numbers. Easier jumping baby!
set relativenumber
" Turn off line wrapping.
set nowrap
" Number of spaces that a <Tab> in the file counts for.
" Setting this value to anything other than 8 (default)
" can make the file appear wrng in many places (e.g., when printing) 
set tabstop=8
" Number of spaces that a <Tab> counts for while performing editing
" operations.
" Mix of spaces and <Tab>s is used while inserting.
set softtabstop=4
" Number of spaces to use for each step of (auto)indent. (operations: >>, <<).
set shiftwidth=4 
" Incremental search!
set incsearch
" Use spaces instead of \t character.
set expandtab
" Indentation
set autoindent smartindent
"Directories for storing swap, backup, and undo files.
"// prevents name collisions. Forces vim to use fullpath of the file as filname.
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
" TODO:  Create script that will create this dirs when they aren't there.

" Come to the dark side, we have cookies!
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox 
" Font for GUI distributions of vim!
" Has to be installed beforehand though.
if has('gui_macvim')
    set guifont=Cascadia\ Mono\ PL:h12
else
    set guifont=Cascadia\ Code\ 12 " Linux
endif
" Make netrw split a bit smaller.
let g:netrw_winsize=20
" Remove netrw banner - who needs that?
let g:netrw_banner=0
" Override fzf.vim's Files function, to limit it's scope to ~/Projects only.
command! -bang ProjectFiles call fzf#vim#files('~/projects', <bang>0)

" Omnisharp here lies awesomness 
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_selector_ui = 'fzf'
let g:OmniSharp_highlight_types = 2
let g:OmniSharp_highlight_groups = {
\ 'csUserIdentifier': [
\   'constant name', 'enum member name', 'field name', 'identifier',
\   'local name', 'parameter name', 'property name', 'static symbol'],
\ 'csUserInterface': ['interface name'],
\ 'csUserMethod': ['extension method name', 'method name'],
\ 'csUserType': ['class name', 'enum name', 'namespace name', 'struct name']
\}

" SharpenUp!
let maplocalleader = "\<Space>"
let g:sharpenup_map_prefix = ','

" ALE - not only for drinking.
let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}

" Configure your coc ( ͡° ͜ʖ ͡ °)
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Here comes the money shot - mappings!

" Space is the leader key now.
let mapleader=" "

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
" Toggle netrw on the left side.
nnoremap <Leader>e :Lexplore<CR>
" Switch ; with : in normal mode - no more shift needed baby!
nmap ; :
