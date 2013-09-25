#vim-bundle-freeze
Vim plugin to import and export bundles

##Install
1. Install [Vundle]
2. Launch `vim`, run `:BundleInstall EHER/vim-bundle-freeze`

##How to use
To export your installed bundles to a file named bundles.txt:
```
:BundleFreeze path/to/bundles.txt
```

To install bundles from bundles.txt:
```
:BundleInstallFromFile path/to/bundles.txt
```

[Vundle]:http://github.com/gmarik/vundle

