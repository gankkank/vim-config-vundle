#!/bin/bash

[ -d ~/.vim/bundle ] || mkdir ~/.vim/bundle

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

tmpdir="/tmp/vim"
[ -d "$tmpdir" ] && rm -rf "$tmpdir"

git clone https://github.com/gankkank/vim-config-vundle $tmpdir &&

[ -f "$tmpdir/.vimrc" ] && cp $tmpdir/.vimrc ~/.vimrc

echo "[notice] run :PluginInstall in vim"
sleep 1

#vim +:PluginInstall
vim +:PluginInstall +:q! +:q!
