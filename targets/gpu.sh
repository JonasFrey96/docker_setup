#!/bin/bash

# Target name
TARGET_NAME="gpu"

# Used to push the images
USERNAME="mmattamala"

# Dockerfile used to build the image
DOCKERFILE="Dockerfile"

# Ubuntu version for the base system
UBUNTU_VERSION="ubuntu20.04"

# ROS version to be installed
ROS_VERSION="noetic"

# CUDA stuff (not required for this target)
WITH_CUDA="true"
CUDA_VERSION="11.6.0"
CUDA_ARCH_BIN="6.1" # For Quadro P2000, check https://developer.nvidia.com/cuda-gpus
JETPACK_VERSION=""

# These variables go in the end since they rely on the previous
# Base image for docker
BASE_IMAGE="nvidia/cuda:$CUDA_VERSION-cudnn8-devel-$UBUNTU_VERSION"

# Tag for the created image
IMAGE_TAG="$USERNAME/devel-$TARGET_NAME:$UBUNTU_VERSION-$ROS_VERSION-cuda$CUDA_VERSION"
