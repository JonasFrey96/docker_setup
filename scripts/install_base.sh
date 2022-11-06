#!/bin/bash

# Update first
apt update

# Install base packages
apt install -y \
  sudo \
  lsb-release \
  ca-certificates \
  apt-utils \
  gnupg2 \
  locate \
  curl \
  wget \
  git \
  vim \
  nano \
  gedit \
  tmux \
  unzip \
  iputils-ping \
  net-tools \
  htop \
  iotop \
  iftop \
  nmap \
  software-properties-common \
  build-essential \
  gdb \
  pkg-config \
  cmake \
  zsh \
  tzdata \
  clang-format \
  clang-tidy \
  xterm \
  gnome-terminal \
  dialog \
  tasksel \
  meld \
  figlet \
  wmctrl \
  tmux \
  usbutils \
  libtbb2 \
  libtbb-dev \
  libjpeg-dev \
  libpng-dev \
  libtiff-dev \
  libavformat-dev \
  libpq-dev \
  libxine2-dev \
  libglew-dev \
  libtiff5-dev \
  zlib1g-dev \
  libjpeg-dev \
  libavcodec-dev \
  libavformat-dev \
  libavutil-dev \
  libpostproc-dev \
  libswscale-dev \
  libeigen3-dev \
  libgtk2.0-dev \
  python3 \
  python3-pip \
  python-dev \
  python-numpy \
  python3-dev \
  python3-numpy \
  python3-matplotlib \
  python3-vtk7 \
  libopenblas-dev \
  liblapack-dev \

# Remove apt repos
rm -rf /var/lib/apt/lists/*

# Enable mouse for tmux
echo """# Make mouse useful in copy mode \
      setw -g mouse on """ >> ~/.tmux.conf