#!/bin/bash

DIR=`pwd`
rm -f $HOME/.vimrc

ln -s $DIR/vimrc-1 $HOME/.vimrc

echo "link 1 is complete."
