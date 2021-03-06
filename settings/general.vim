" GENERAL PLUG CONFIGURATIONS

" need to set up this outsite the init.vim
set termguicolors

" sneak configurations
" case insensitive sneak
let g:sneak#use_ic_scs = 1
" immediately move to the next instance of search
let g:sneak#s_next = 1

" gitgutter configurations
nmap ) <Plug>(GitGutterNextHunk)
nmap ( <Plug>(GitGutterPrevHunk)
let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0

" vim airline configuration
let g:airline#extensions#tabline#enabled = 1 " enable tabline
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline_powerline_fonts = 1 " enable powerline fonts
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = 'deus'

" startify configurations
let g:startify_session_dir = '~/nvim/sessions'
let g:startify_files_number = 5
let g:startify_enable_special = 1
let g:startify_session_autoload = 1
let g:startify_change_to_vcs_root = 1
let g:startify_session_persistence = 1
let g:startify_session_delete_buffers = 1
let g:startify_lists = [
     \ { 'type': 'files',     'header': ['   Files:']                        },
     \ { 'type': 'dir',       'header': ['   Current Directory: '. getcwd()] },
     \ { 'type': 'sessions',  'header': ['   Sessions:']                     },
     \ { 'type': 'bookmarks', 'header': ['   Bookmarks:']                    },
     \ ]
let g:startify_bookmarks = [
     \ { 'b': '~/.bashrc' },
     \ { 'bb': '~/dot/scripts/' },
     \ { 'nv': '~/nvim/init.vim' },
     \ { 'dot': '~/dot'},
     \ { 'pro': '~/projects'},
     \ ]

" web dev icons for startify
let g:webdevicons_enable_startify = 1
function! StartifyEntryFormat()
  return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

" indent line configurations
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" explorer configurations
" https://github.com/weirongxu/coc-explorer
let g:coc_explorer_global_presets = {
\   'floating': {
\      'position': 'floating',
\   },
\   'floatingLeftside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 50,
\   },
\   'floatingRightside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 50,
\   },
\   'simplify': {
\     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }

" vim slime configurations
" https://github.com/jpalardy/vim-slime
" let g:slime_target = "screen"
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "2"}

" =============================================================================
" markdown configurations
" =============================================================================
"
" limelight
" https://github.com/junegunn/limelight.vim
let g:limelight_default_coefficient = 0.7
let g:limelight_conceal_ctermfg=224
let g:limelight_paragraph_span = 3
let g:limelight_priority = -1
autocmd VimEnter * Limelight
"
" Goyo
" https://github.com/junegunn/goyo.vim
autocmd! User GoyoEnter Limelight
" autocmd! User GoyoLeave Limelight!
"
" vim-markdown
" https://github.com/plasticboy/vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_frontmatter= 1
let g:vim_markdown_conceal = 0
" let g:vim_markdown_folding_level = 4




