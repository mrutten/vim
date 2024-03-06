# Table of Contents

<!-- toc -->

- [Introduction](#introduction)
- [Plugin installation](#plugin-installation)
  * [vim-plug](#vim-plug)

<!-- tocstop -->

# Introduction

Vimrc with a few plugins.

# Plugin installation

## vim-plug

[Vim-plug](https://github.com/junegunn/vim-plug) is a minimalist Vim plugin manager.

After Vim-plug is installed, the other plugins can be easily installed.

- vim-airline: lean & mean status/tabline
- vim-airline-themes: a collection of themes for vim-airline
- vim-devicons: adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/mrutten/vim.git
cd vim
cp vimrc ~/.vimrc
vim +PlugInstall +qall
```
