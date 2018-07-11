#!/bin/sh
set -e

_CURR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function inst_YouCompleteMe {
    local ycm_dir="$_CURR_DIR/sources_non_forked/YouCompleteMe"
    local old_dir="`pwd`"
    sudo apt-get install -y build-essential cmake python-dev python3-dev \
        && cd "$ycm_dir" \
        && ./install.py --clang-completer \
        && cd "$old_dir" \
        && echo "SUCCESS: YouCompleteMe installed" \
        || (echo "ERROR: Failed to install YouCompleteMe" && exit 1)
}

inst_YouCompleteMe

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
