#!/bin/sh

## Install system utilities.
sudo apt install -y emacs-nox ripgrep fd-find

## Install use-package for GNU Emacs, to bootstrap the packaging system.
emacs --batch --eval "(progn (package-initialize) (add-to-list 'package-archives '(\"melpa\" . \"https://melpa.org/packages/\")) (package-refresh-contents) (package-install 'use-package))"

## Move the existing dotfiles.
for f in .gitconfig
do
    mv $f ~/
done

## use-package installation already created the directory, move individual files instead.
for f in .emacs.d
do
    mv $f ~/.emacs.d/
done
