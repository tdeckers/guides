#!/bin/bash

rm -rf ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -L -o ~/.vim/vimrc https://github.com/tdeckers/guides/raw/master/vimrc
