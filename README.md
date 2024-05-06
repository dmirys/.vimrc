# Description

Here some of my VIM configuration files:
  * basic.vimrc - Some general settings useful for editing any file.
  * cpp.vimrc - Incomplete minimalistic config for building and running simple C++ programs.
  * ide.vimrc - Configure VIM as IDE (preferably for C++, but other languages are also supported).
  * vimrc - Just an entry point for VIM, which loads all other configs to build IDE.

To load and apply settings from particular config file the following command can be used in VIM
```
: source path_to_config_file
```

## basic.vimrc

Provides the following key combinations to enable/disable features:
  * \ + t - Toggle tabs or spaces usage for padding (tabs by default).
  * \ + q - Close current buffer. When used on last buffer it will open new blank buffer.
  * \ + s - Toggle the display of invisible characters.
  * \ + n - Toggle the display of line numbers.
  * F2 - Save file

Where '\\' is the default "leader" symbol, which can be reconfigured.

## cpp.vimrc

Supports the following key combinations:
  * F4 - Switch between header and source files.
  * F9 - Save, build and run.

## ide.vimrc

Uses additional VIM plugins to configure VIM as IDE. Requires some initial setup.

# Install

Install these configs:
> git clone https://github.com/dmirys/vimrc.git ~/.vim

Usage of `vimrc` and `ide.vimrc` requires some setup.

Set up [Vundle](https://github.com/VundleVim/Vundle.vim):
> git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Configure plugins:
> vim +PluginInstall +qall

# Adding new plugins

Vundle is legacy, but still popular, package manager for VIM. It's built-in function `:PluginSearch`
does not search anything. Available scripts now can be found on https://www.vim.org/scripts/.
Than concrete script name can be added to ide.vimrc.

