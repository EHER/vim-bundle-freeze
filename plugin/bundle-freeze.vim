function! s:BundleFreeze(fname)
    silent call vundle#installer#list('!'=='<bang>')
    silent write! ~/.vim/my-bundles.vim
    echo "Backup of bundle list created!"

    if a:fname != ""
        let s:bundles = readfile(expand("~/.vim/my-bundles.vim"))
        silent call writefile(s:bundles, expand(a:fname))
        echo "Bundle list wrote into: " . a:fname
    endif

    quit
endfunction

command! -nargs=* BundleFreeze
            \ call s:BundleFreeze('<args>')
