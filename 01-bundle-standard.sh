#!/bin/bash

echo "start"

# GENERAL
standard=( \
    "https://github.com/scrooloose/nerdtree.git" \
    "https://github.com/rking/ag.vim.git" \
    "https://github.com/itchyny/lightline.vim.git" \
    "https://github.com/airblade/vim-gitgutter.git" \
    "https://github.com/tomasr/molokai.git" \
    "https://github.com/tpope/vim-ragtag.git" \
    "https://github.com/Raimondi/delimitMate.git" \
    "https://github.com/moll/vim-bbye.git" \
    "https://github.com/kshenoy/vim-signature.git" \
    "https://github.com/tpope/vim-unimpaired.git" \
    "https://github.com/justinmk/vim-sneak.git" \
    "https://github.com/Shougo/unite.vim.git" \
    "https://github.com/ervandew/supertab.git" \
    "https://github.com/nelstrom/vim-qargs.git" \
    "https://github.com/mtth/scratch.vim.git" \
    "https://github.com/bling/vim-bufferline.git" \
    "https://github.com/tomtom/tcomment_vim.git" \
    "https://github.com/junegunn/vim-easy-align.git" \
    "https://github.com/tmhedberg/matchit.git" \
    "https://github.com/tpope/vim-repeat.git" \
    "https://github.com/tpope/vim-surround.git" \
    "https://github.com/airblade/vim-rooter.git" \
    "https://github.com/MarcWeber/vim-addon-local-vimrc.git" \
    "https://github.com/terryma/vim-expand-region.git" \
    "https://github.com/milkypostman/vim-togglelist.git" \
    )

# checks first to see if they exist
for i in "${standard[@]}"
do
	wget -q --spider "$i"

	if [ "$?" -ne 0 ]; then
	    echo "[ERROR] Unable to read from '$SITE_REPO_URL'"
	    exit 1;
	fi

	sleep 1

done

sleep 1

# target dir
BDIR=./bundle
mkdir -p $BDIR
cd $BDIR

# clones and removes git dir
for i in "${standard[@]}"
do

    FNAME=$(basename $i)
    REALDIR=${FNAME%.*}

    git clone --quiet --depth 1 "$i" $REALDIR

    cd $REALDIR
    rm -rf .git
    rm -f .gitignore
    cd ..
    echo "done -" $i
    
    sleep 1

done

exit
