let s:apis = {}

function! SpaceVim#api#import(name) abort
  if has_key(s:apis, a:name)
    return deepcopy(s:apis[a:name])
  endif
  let p = {}
  try
    let p = SpaceVim#api#{a:name}#get()
    let s:apis[a:name] = p
  catch /^Vim\%((\a\+)\)\=:E117/
  endtry
  return p
endfunction

function! SpaceVim#api#register(name, api) abort
  if !empty(SpaceVim#api#import(a:name))
    echoerr '[SpaceVim api] Api : ' . a:name . ' already existed!'
  else
    let s:apis[a:name] = deepcopy(a:api)
  endif
endfunction

" vim:set fdm=marker sw=2 nowrap:
