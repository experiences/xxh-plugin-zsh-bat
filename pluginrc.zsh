#!/usr/bin/env bash

# This script will be executed ON THE HOST when you connect to the host.
# Put here your functions, environment variables, aliases and whatever you need.

CURR_DIR="$(cd "$(dirname "$0")" && pwd)"
plugin_name='xxh-plugin-zsh-bat'

export PATH=$CURR_DIR/bat:$PATH
export BAT_THEME="GitHub"
alias cat='bat --paging=never'
fpath=($CURR_DIR/bat/autocomplete $fpath)
