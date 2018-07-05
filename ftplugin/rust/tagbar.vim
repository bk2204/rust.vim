"
" Support for Tagbar -- https://github.com/majutsushi/tagbar
"
if !exists(':Tagbar')
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

let g:tagbar_type_rust = {
  \ 'ctagstype' : 'rust',
  \ 'kinds' : [
    \'T:types',
    \'f:functions',
    \'g:enumerations',
    \'s:structures',
    \'m:modules',
    \'c:constants',
    \'t:traits',
    \'i:trait implementations',
  \ ]
\ }

" In case you've updated/customized your ~/.ctags and prefer to use it.
if get(g:, 'rust_use_builtin_ctags_defs', 1)
  let g:tagbar_type_rust.deffile = expand('<sfile>:p:h:h:h') . '/ctags/rust.ctags'
endif

let &cpo = s:save_cpo
unlet s:save_cpo
