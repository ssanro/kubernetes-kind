#!/bin/bash

# Get parameters
args=("$@")

# Create cluster
if [[ " ${args[*]} " == *" create "* ]]; then
kind create cluster \
    --config=cluster/kind-config.yaml
fi
# Delete cluster
if [[ " ${args[*]} " == *" delete "* ]]; then
kind delete cluster --name book
fi
# Restart cluster
if [[ " ${args[*]} " == *" restart "* ]]; then
./bash/cluster.sh delete
./bash/cluster.sh create
fi
# Clean cluster
if [[ " ${args[*]} " == *" clean "* ]]; then
./bash/clean-cluster.sh
fi
