FROM buildpack-deps:stretch-scm
LABEL maintainer="Tsuyoshi Hombashi <tsuyoshi.hombashi@gmail.com>"

RUN apt-get update && apt-get install -y --no-install-recommends \
        autoconf \
        automake \
        gcc \
        libc6-dev \
        make \
        pkg-config \
    && rm -rf /var/lib/apt/lists/*

COPY universal_ctags_installer.sh /usr/local/bin/universal_ctags_installer
RUN chmod 544 /usr/local/bin/universal_ctags_installer

ENTRYPOINT ["/usr/local/bin/universal_ctags_installer", "/dist"]
