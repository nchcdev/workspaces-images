#!/bin/bash
set -e

# Install tools
apt-get update
apt-get install -y \
  s3fs \
  traceroute \
  net-tools \
  bind9-dnsutils \
  vim \
  rclone \
  s3cmd

# Cleanup
if [ -z ${SKIP_CLEAN+x} ]; then
  apt-get autoclean
  rm -rf \
    /var/lib/apt/lists/* \
    /var/tmp/*
fi
