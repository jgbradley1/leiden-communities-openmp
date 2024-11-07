FROM ubuntu:24.04

# avoid common warnings
ENV DEBIAN_FRONTEND=noninteractive
ENV PIP_ROOT_USER_ACTION=ignore
ENV PIP_DISABLE_PIP_VERSION_CHECK=1
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

RUN apt-get -qq -y update \
    && apt-get -qq -y upgrade \
    && apt-get -qq -y install software-properties-common locales \
    && add-apt-repository -y universe

# install python, pip, git, and other required tools
RUN apt-get -qq -y install \
    apt-transport-https \
    build-essential \
    ca-certificates \
    cmake \
    curl \
    gdb \
    gcc-14 g++-14 \
    git \
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
    wget \
    zlib1g-dev

# create a python virtual environment
RUN python3 -m venv /venv
COPY .bash_aliases /root/.bash_aliases

CMD ["bash"]
