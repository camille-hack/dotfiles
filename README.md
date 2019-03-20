# Camille Hack's Dotfiles #

## Setup ##

You need the following software:
* [socat](http://www.dest-unreach.org/socat/) to update anonymously
* [yadm](https://thelocehiliosan.github.io/yadm/)
* pynvim and [jedi](https://github.com/davidhalter/jedi) for using with
neovim
* [pytaglib](https://pypi.org/project/pytaglib/) and
[youtube-dl](https://rg3.github.io/youtube-dl/) for the music\_dl script

Then, install [yadm](https://thelocehiliosan.github.io/yadm/) and clone
```
yadm clone https://github.com/camille-hack/dotfiles.git
```


## Features ##

* [x] manage dotfiles with [yadm](https://thelocehiliosan.github.io/yadm/)
* [x] [bootstrap](https://thelocehiliosan.github.io/yadm/docs/bootstrap) neovim plugins
* [x] use tor with git
* [x] use [tor with gnupg](https://gnupg.org/blog/20151224-gnupg-in-november-and-december.html)
* [x] respect [systemd file hierarchy](https://www.freedesktop.org/software/systemd/man/file-hierarchy.html)
and [xdg user directories](https://www.freedesktop.org/wiki/Software/xdg-user-dirs/)
