#!/usr/bin/env bash

cd

if [ -d .git ]; then
    exit 0;
fi

echo -e "Host github.com\n\tStrictHostKeyChecking no\n" > ~/.ssh/config

git clone git@github.com:dodo5522/dotfiles.git
mv dotfiles/.git ./
git reset --hard
rm -rf dotfiles
