function! s:BundleFreeze(fname)
    silent call vundle#installer#list('!'=='<bang>')
    silent write! ~/.vim/my-bundles.vim
    echo "Backup from bundles list created!"

    if a:fname != ""
        let s:bundles = readfile(expand("~/.vim/my-bundles.vim"))
        silent call writefile(s:bundles, expand(a:fname))
        echo "Bundle list wrote into: " . a:fname
    endif

    quit
endfunction

function! s:BundleInstallFromFile(fname)
    if a:fname != ""
        source a:fname
        silent call vundle#installer#new('!' == '<bang>', '')
        quit
    endif
endfunction

command! -nargs=* BundleFreeze
            \ call s:BundleFreeze('<args>')
command! -nargs=* BundleInstallFromFile
            \ call s:BundleInstallFromFile('<args>')
