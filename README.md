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
