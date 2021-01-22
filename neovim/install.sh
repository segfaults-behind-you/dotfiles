#!/usr/bin/env zsh
[ ! -d ~/.config/nvim/ ] && mkdir ~/.config/nvim

(([ -L ~/.config/nvim/init.vim ] || [ -f ~/.config/nvim/init.vim ]) &&
echo "init.vim already exists. Omitting." >&2) ||
ln -s $(pwd)/init.vim ~/.config/nvim/init.vim

(([ -L ~/.config/nvim/plugin ] || [ -d ~/.config/nvim/plugin ]) &&
echo "plugin directory  already exists. Omitting." >&2) ||
ln -s $(pwd)/plugin ~/.config/nvim/plugin

(([ -L ~/.config/nvim/after ] || [ -d ~/.config/nvim/after ]) &&
echo "after directory already exists. Omitting." >&2) ||
ln -s $(pwd)/after ~/.config/nvim/after

[ ! -d ~/.nvim/undodir ] && mkdir -p ~/.nvim/undodir
