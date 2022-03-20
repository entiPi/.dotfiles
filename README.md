# Getting Started

Follow these steps to setup a new machine:

'''
git clone https://github.com/entiPi/.dotfiles.git
cd .dotfiles
git submodule update --init --recursive
git update-index --assume-unchanged git/.config/git/config

# pick apropriate tools
stow bash i3 vim tmux ...
'''
