let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_selector_ui = 'fzf'
let g:OmniSharp_selector_findusages = 'fzf'
let g:OmniSharp_highlight_types = 2
let g:OmniSharp_highlight_groups = {
\ 'csUserIdentifier': [
\   'constant name', 'enum member name', 'field name', 'identifier',
\   'local name', 'parameter name', 'property name', 'static symbol'],
\ 'csUserInterface': ['interface name'],
\ 'csUserMethod': ['extension method name', 'method name'],
\ 'csUserType': ['class name', 'enum name', 'namespace name', 'struct name']
\}

" SharpenUp
let maplocalleader = "\<Space>"
let g:sharpenup_map_prefix = ','
