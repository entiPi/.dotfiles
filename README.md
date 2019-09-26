# Getting Started

Follow these steps to setup a new machine:

'''
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/entiPi/.dotfiles.git /tmp/dotfiles
rsync --recursive --verbose --exclude='.git' /tmp/dotfiles/ $HOME/
rm -r /tmp/dotfiles
git --git-dir=$HOME/.dotfiles --work-dir=$HOME submodule update --init --recursive
'''
