# Description

Here some of my VIM configuration files:
  * basic.vimrc - Some general settings useful for editing any file.
  * cpp.vimrc - Incomplete minimalistic config for building and running simple C++ programs.
  * vimrc - More advanced config for C++, which requires additional configuration for special plugins usage.

To load and apply settings from particular config file the following command can be used in VIM
```
: source path_to_config_file
```

# basic.vimrc

Provides the following key combinations to enable/disable features:
  * \ + t - Toggle tabs or spaces usage for padding (tabs by default).
  * \ + q - Close current buffer. When used on last buffer it will open new blank buffer.
  * \ + s - Toggle the display of invisible characters.
  * \ + n - Toggle the display of line numbers.
  * F2 - Save file

Where '\\' is the default "leader" symbol, which can be reconfigured.

# cpp.vimrc

Supports the following key combinations:
  * F4 - Switch between header and source files.
  * F9 - Save, build and run.

# vimrc

## Install

Setup Vundle using instructions from https://github.com/VundleVim/Vundle.vim

Apply .vimrc
> \$ cp vimrc ~/.vimrc

Run vim and input the following command to install all the plugins listed in the .vimrc
> :PluginInstall

Setup YouCompleteMe using the instructions from https://github.com/Valloric/YouCompleteMe. On 32 bit system the following error may occur on the execution of ./install.py --clang-completer:
> CMake Error at ycm/CMakeLists.txt:76 (message):
  No prebuilt Clang 6.0.0 binaries for 32-bit Linux.  You'll have to compile
  Clang 6.0.0 from source.  See the YCM docs for details on how to use a
  user-compiled libclang.

If libclang already installed just run:
> ./install.py --clang-completer --system-libclang
