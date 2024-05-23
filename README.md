# Table of Contents

<!-- vim-markdown-toc GFM -->

* [Plugin installation](#plugin-installation)

<!-- vim-markdown-toc -->

# Plugin installation

[Vim-plug](https://github.com/junegunn/vim-plug) is a minimalist Vim plugin manager.

After Vim-plug is installed, the other plugins can be easily installed.

- catppuccin: dark theme
- nord: dark theme
- vim-airline: lean & mean status/tabline
- vim-airline-themes: a collection of themes for vim-airline
- vim-devicons: adds file type icons to Vim plugins
- vim-markdown-toc: Create table of contents for markdown files

Install prerequisite packages.

```bash
# Debian
sudo apt install curl git

# Arch
sudo pacman -S curl git
```

Clone vimrc and install plugins

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/mrutten/vim.git
cd vim
cp vimrc ~/.vimrc
vim +PlugInstall +qall
cd ..
rm -rf vim
```
