function! s:BundleFreeze(fname)
    silent call vundle#installer#list('!'=='<bang>')
    silent write! ~/.vim/my-bundles.vim
    let s:bundles = readfile(expand("~/.vim/my-bundles.vim"))
    call writefile(s:bundles, expand(a:fname))
    quit
endfunction

function! s:BundleInstallFromFile(fname)
    source a:fname
    silent call vundle#installer#new('!' == '<bang>', '')
    quit
endfunction

command! -nargs=* BundleFreeze
            \ call s:BundleFreeze('<args>')
command! -nargs=* BundleInstallFromFile
            \ call s:BundleInstallFromFile('<args>')
