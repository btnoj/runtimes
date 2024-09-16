FROM debian:trixie-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl file gcc g++ 2to3 python3 python3-gdbm python3-lib2to3 python3-venv python3-pip python3-dev python3-setuptools python3-wheel cython3 libseccomp-dev bzip2 gzip fp-compiler libxtst6 tini ca-certificates libc6 && \
    mkdir -p /etc/perl && \
    apt-get clean && rm -rf /var/lib/apt/lists/* && \
    useradd -m judge

ENTRYPOINT ["/usr/bin/tini", "/code/run"]
