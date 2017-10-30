#!/usr/bin/env bash
#
# tbjers/dot-gnome-terminal ellipsis package

pkg.install() {
  case $(os.platform) in
    linux)
      if utils.cmd_exists pacman; then
        sudo pacman -Sy --noconfirm gconf gnome-terminal
      fi
      wget https://raw.githubusercontent.com/denysdovhan/gnome-terminal-one/master/one-dark.sh && . one-dark.sh
      ;;
  esac
}
