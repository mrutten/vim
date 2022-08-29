# Introduction

Vim installation riced to turn it into a code editor.

# Plugin installation

## vim-plug

[Vim-plug](https://github.com/junegunn/vim-plug) is a minimalist Vim plugin manager.

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

After Vim-plug is installed, the other plugins can be easily installed.

- vim-airline: lean & mean status/tabline
- vim-airline-themes: a collection of themes for vim-airline
- NerdTree: a tree explorer plugin for vim
- vim-devicons: adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more

## vim-devicons

```bash
mkdir -p ~/.local/share/fonts/NerdFonts
curl -Lso Hack.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Hack.zip
unzip Hack.zip -d ~/.local/share/fonts/NerdFonts
```

Clear and regenerate your font cache and indexes with the following command:

```bash
fc-cache -f -v
```

You can confirm that the fonts are installed with the following command:

```bash
fc-list | grep "Hack"
```

# .vimrc

Download vimrc and copy it into home directory.

```bash
git clone https://gitlab.com/mrutten/vim
cd vim
cp .vimrc ~
```

***Note: some symbols might not render properly in the browser, but if the fonts installed correctly, the symbols will render in Vim.***

Install the plugins.

```bash
vim +PlugInstall +qall
```

# miscellaneous notes

Navigation through Nerdtree can be done using the standard vim shortcuts.

```
CTRL+W-[h|j|k|l]
```

In visual mode, hold shift when selecting text to copy the buffer outside of vim to another program.

