#!/usr/bin/env bash

# Install dependencies
apt-get update
apt-get install -y git

# Download version 1.8.1 of golang and unpack
curl -O https://storage.googleapis.com/golang/go1.8.1.linux-amd64.tar.gz
tar xvf go1.8.1.linux-amd64.tar.gz

# Move go to its correct directory
sudo chown -R root:root ./go
sudo mv go /usr/local/

# Set environment variables for go
echo "export GOPATH=$HOME/work" >> .profile
echo "export GOBIN=$HOME/work/bin" >> .profile
echo "export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin" >> .profile

# Source the new environment variables
source ~/.profile

# Make go working directories
mkdir $HOME/work
mkdir $HOME/work/bin
mkdir $HOME/work/pkg

# Create directory hierarchy for projects
mkdir -p $HOME/work/src/github.com/chrisolis214
