# Camille Hack's Dotfiles #

## Setup ##

You need the following software:

* python last stable version
* [socat](http://www.dest-unreach.org/socat/) to update anonymously
* [yadm](https://thelocehiliosan.github.io/yadm/)
* pynvim, [flake8](https://gitlab.com/pycqa/flake8) and [jedi](https://github.com/davidhalter/jedi) for using with
neovim
* [pytaglib](https://pypi.org/project/pytaglib/), ffmpeg and
[youtube-dl](https://rg3.github.io/youtube-dl/) for the music\_dl script

Then, install [yadm](https://thelocehiliosan.github.io/yadm/) and clone

```
yadm clone https://github.com/camille-hack/dotfiles.git
```

## Fedora 39: quick setup ##

```
dnf config-manager --add-repo https://download.opensuse.org/repositories/home:TheLocehiliosan:yadm/Fedora_39/home:TheLocehiliosan:yadm.repo
sudo dnf install neovim socat yadm
sudo dnf install texlive-fontawesome5 texlive-scheme-minimal
sudo dnf install python3-flake8 python3-jedi python3-neovim python3-pip python3-pytaglib
pip install --upgrade --user youtube-dl

yadm clone https://github.com/camille-hack/dotfiles.git
```

## Features ##

* [x] manage dotfiles with [yadm](https://thelocehiliosan.github.io/yadm/)
* [x] [bootstrap](https://thelocehiliosan.github.io/yadm/docs/bootstrap) neovim plugins
* [x] use tor with git
* [x] use [tor with gnupg](https://keys.openpgp.org/about/usage#gnupg-tor)
* [x] respect [systemd file hierarchy](https://www.freedesktop.org/software/systemd/man/file-hierarchy.html)
and [xdg user directories](https://www.freedesktop.org/wiki/Software/xdg-user-dirs/)
* [x] my taste of neovim
* [x] colors are activated where possible in the terminal
* [x] [EasyEffects presets](https://github.com/Digitalone1/EasyEffects-Presets)
