"=============================================================================
" FlyGrep.vim --- Fly grep in vim
" Copyright (c) 2016-2017 Shidong Wang & Contributors
" Author: Shidong Wang < wsdjeg at 163.com >
" URL: https://github.com/wsdjeg/FlyGrep.vim
" License: MIT license
"=============================================================================

""
" @section Introduction, intro
" @stylized FlyGrep
" @library
" @order intro version dicts functions exceptions layers api faq
" Fly grep in vim, written in pure vim script for MacVim, gvim and vim version
" 8.0+.
"

""
" @section CONFIGURATION, config
" FlyGrep has strong default options, but you can also change the option
" yourself.

""
" FlyGrep will start to searching code after a delay, the default value is
" 500ms.
let g:FlyGrep_input_delay = 500

""
" A list of searching tools will be userd.
let g:FlyGrep_search_tools = ['ag', 'rg', 'grep', 'pt', 'ack']

""
" Enable FlyGrep statusline
let g:FlyGrep_enable_statusline = 1

command! -nargs=0 FlyGrep call FlyGrep#open({})
