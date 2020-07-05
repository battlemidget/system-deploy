#!/bin/bash
set -e

[[ $(cat /etc/passwd | grep bar | grep zsh) != "" ]] || exit 1

ls -lah /home/bar
[[ -d /home/bar/.oh-my-zsh ]] || exit 1
[[ "$(cat /home/bar/.zshrc)" == "# example file" ]] || exit 1