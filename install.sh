#!/bin/bash
set -u
#set -x

THIS_DIR=$(cd $(dirname $0); pwd)

cd $THIS_DIR
git submodule init
git submodule update

#echo $THIS_DIR

cd $HOME

for file in .vim .vimrc
do
  [[ ${file} = ".git"  ]] && contine
  [ ! -e $file ] && ln -s dotfiles/$file .
done
