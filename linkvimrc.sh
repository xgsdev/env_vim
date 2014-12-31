#!/bin/bash

DIR=`pwd`
rm -rf $HOME/.vimrc

ln -s $DIR/vimrc $HOME/.vimrc

echo "end "
