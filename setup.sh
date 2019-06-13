#!/usr/bin/env bash

# setting tmux
cp tmux.conf ~/.tmux.conf

# setting vim
mv ~/.vimrc ~/.vimrc_backup
cp vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer
