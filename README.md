# universal-ctags-installer
Build and installation script for [Universal Ctags](https://ctags.io/)


# Installation
```
$ curl -L https://github.com/thombashi/universal-ctags-installer/raw/master/universal_ctags_installer.sh | bash
```

## Specify installation path
```
$ wget https://github.com/thombashi/universal-ctags-installer/raw/master/universal_ctags_installer.sh
$ bash universal_ctags_installer.sh /where/you/want
```


# Docker image
https://hub.docker.com/r/thombashi/universal-ctags-installer/

```
$ docker pull thombashi/universal-ctags-installer
$ docker run -v /where/you/want:/dist universal_ctags_installer
```

Universal Ctags will installed to `/where/you/want/bin` (you could specify an arbitrary path to `/where/you/want`).
