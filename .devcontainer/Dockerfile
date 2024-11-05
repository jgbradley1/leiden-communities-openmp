FROM ubuntu:24.04

# avoid common warnings
ENV DEBIAN_FRONTEND=noninteractive
ENV PIP_ROOT_USER_ACTION=ignore
ENV PIP_DISABLE_PIP_VERSION_CHECK=1
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
# customize shell prompt to allow more space for typing
# ENV PS1 '\u\\$ '

# install python, pip, git, and other required tools
RUN apt-get --yes -qq update \
    && apt-get --yes -qq upgrade \
    && apt-get --yes -qq install \
    apt-transport-https \
    build-essential \
    bzip2 \
    ca-certificates \
    cmake \
    cpio \
    curl \
    gdb \
    git \
    gosu \
    gfortran \
    gnupg \
    htop \
    libblas-dev \
    libicu-dev \
    liblapack-dev \
    libopenmpi-dev \
    lsb-release \
    openmpi-bin \
    python3-dev \
    python3-pip \
    python3-venv \
    software-properties-common \
    sudo \
    vim \
    wget \
    zlib1g-dev

# create a python virtual environment
RUN python3 -m venv /venv
COPY .bash_aliases /root/.bash_aliases

CMD ["bash"]
