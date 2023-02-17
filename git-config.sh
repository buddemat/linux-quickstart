#!/usr/bin/env bash

sudo apt-get install git -y
git config user.name "Matthias Budde"
git config user.email "buddemat@users.noreply.github.com"
git config --global alias.stat status
git config --global alias.st status
git config --global alias.ci commit
git config --global init.defaultBranch main
git config --global pull.rebase true
git config --global fetch.prune true
git config --global diff.colorMoved zebra
git config --global mergetool.prompt false
git config --global merge.conflictstyle diff3
git config --global merge.tool vimdiff
git config --global pager.log false
git config --global core.editor vim
