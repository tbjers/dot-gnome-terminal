#!/usr/bin/env bash
#
# tbjers/dot-gnome-terminal ellipsis package

pkg.install() {
  case $(os.platform) in
    linux)
      if utils.cmd_exists pacman; then
        sudo pacman -Sy --noconfirm gconf
      fi
      utils.run_installer https://raw.githubusercontent.com/denysdovhan/gnome-terminal-one/master/one-dark.sh
      ;;
  esac
}
