# Check http://releases.llvm.org/download.html#10.0.0 for the latest available binaries
FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive 

# Make sure the image is updated, install some prerequisites,
# Download the latest version of Clang (official binary) for Ubuntu
# Extract the archive and add Clang to the PATH
RUN apt-get update && apt-get install -y \
  ca-certificates \
  autoconf automake cmake dpkg-dev file git make patch \
  libc-dev libc++-dev libgcc-10-dev libstdc++-10-dev  \
  dirmngr gnupg2 lbzip2 wget xz-utils libtinfo5 \
  && rm -rf /var/lib/apt/lists/* 

# Start from a Bash prompt
CMD [ "/bin/bash" ]

