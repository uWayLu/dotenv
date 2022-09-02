#!/bin/bash
cd $(dirname $(readlink -f $0))

for i in $(ls -l | grep "^d" | awk {'print $NF'}); do
    rm ~/.config/$i
    ln -s $PWD/$i ~/.config/
    ls -al ~/.config | grep "$i$" --color
done
