FROM buildpack-deps:stretch
LABEL maintainer="Tsuyoshi Hombashi <tsuyoshi.hombashi@gmail.com>"

COPY universal_ctags_installer.sh /usr/local/bin/universal_ctags_installer

ENTRYPOINT ["/usr/local/bin/universal_ctags_installer", "/dist"]
