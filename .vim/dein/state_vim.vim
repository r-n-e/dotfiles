if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/Users/ryo/.vim/dein/repos/github.com/Shougo/dein.vim/,/Users/ryo/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/Users/ryo/.vim/after' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/ryo/.vimrc', '/Users/ryo/.vim/rc/dein.toml', '/Users/ryo/.vim/rc/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/ryo/.vim/dein'
let g:dein#_runtime_path = '/Users/ryo/.vim/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/ryo/.vim/dein/.cache/.vimrc'
let &runtimepath = '/Users/ryo/.vim/dein/repos/github.com/Shougo/dein.vim/,/Users/ryo/.vim,/usr/share/vim/vimfiles,/Users/ryo/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/ryo/.vim/dein/.cache/.vimrc/.dein,/usr/share/vim/vim80,/Users/ryo/.vim/dein/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/Users/ryo/.vim/after'
filetype off
augroup SetColorScheme 
    au!
    au VimEnter * nested colorscheme molokai
augroup END
    
