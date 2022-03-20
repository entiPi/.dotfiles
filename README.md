# Getting Started

Follow these steps to set up dotfiles:

```bash
git clone https://github.com/entiPi/.dotfiles.git
cd .dotfiles
git submodule update --init --recursive
git update-index --assume-unchanged git/.config/git/config
```

# pick apropriate tools

```bash
stow bash i3 vim tmux ...
```
