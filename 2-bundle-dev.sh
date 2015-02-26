#!/bin/bash

# DEVELOPMENT
#angular-vim-snippets

standard=( \
    "https://github.com/Shougo/unite.vim.git" \
    "https://github.com/Shougo/neocomplete.vim.git" \
    "https://github.com/Shougo/neosnippet.vim.git" \
    "https://github.com/honza/vim-snippets.git" \
    "https://github.com/sheerun/vim-polyglot.git" \
    "https://github.com/jelera/vim-javascript-syntax.git" \
    "https://github.com/nathanaelkane/vim-indent-guides.git" \
    "https://github.com/kien/rainbow_parentheses.vim.git" \
    "https://github.com/Shougo/unite-session.git" \
    "https://github.com/h1mesuke/unite-outline.git" \
    "https://github.com/gregsexton/gitv.git" \
    "https://github.com/tpope/vim-fugitive.git" \
    "https://github.com/mattn/emmet-vim.git" \
    "https://github.com/Shougo/vimproc.vim.git" \
    "https://github.com/Shougo/vimshell.vim.git" \
    "https://github.com/scrooloose/syntastic.git" \
    "https://github.com/terryma/vim-multiple-cursors.git" \
    "https://github.com/marijnh/tern_for_vim.git" \
    )

TOTAL=${#standard[@]} 
echo "start - $TOTAL plugins"

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
BDIR=./tmpbundle12
mkdir -p $BDIR
cd $BDIR

k=1
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
    echo $k " - done -" $i
    k=$[$k+1]
    
    sleep 1

done

exit
