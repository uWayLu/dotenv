#!/bin/bash
cd $(dirname $(readlink -f $0))

ts=$(date +'%s')
cfg_dir=~/.config

for i in $(ls -l | grep "^d" | awk {'print $NF'}); do
    orig=$cfg_dir/$i
    if [ -h $orig ]; then
        rm $orig
    elif [ -f $orig ]; then
        mv $orig $orig'_bak'
    fi
    ln -s $PWD/$i $cfg_dir
    ls -al ~/.config | grep "$i$" --color
done
