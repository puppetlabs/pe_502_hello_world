#!/usr/bin/env bash

# Copyright 2024. Puppet, Inc., a Perforce company. 

# Make sure we're not running as root
if [ $(id -u) -eq 0 ]; then
  echo "Don't run this script as root"
  exit
fi

# Navigate to module directory
cd $HOME/hello_world

# Ensure we install all the development gems
pdk bundle config set development true

# Install all required gems
pdk bundle install

# Install all the required fixtures from .fixtures.yml
pdk bundle exec rake spec_prep