#!/bin/bash

name="$1:-dev"
options="$2"

if [ -z "$options" ]; then
  driver="vmwarefusion"
  if [ $(ps aux | grep vmware-tools | grep -v grep | wc -l) -ne 0 ]; then
    # Use virtualbox as driver in VMs
    driver="virtualbox"
  fi

  options="--driver $driver --engine-storage-driver overlay"
fi

echo "Creating '$name' with options '$options'..."

docker-machine create "$name" $options
