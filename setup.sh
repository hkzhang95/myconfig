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

# setting on-my-zsh
curl -Lo ~/oh-my-zsh_install.sh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
sh ~/oh-my-zsh_install.sh --unattended
rm ~/oh-my-zsh_install.sh
chsh -s $(which zsh)
echo "oh-my-zsh installed, remember to modify ~/.zshrc and restart your terminal"
