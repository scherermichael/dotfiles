#!/bin/bash

name="$1:-dev"
options="$2"

if [ -z "$options" ]; then
  driver="vmwarefusion"
  if ! pgrep vmware-tools > /dev/null; then
    # Use virtualbox as driver in VMs
    driver="virtualbox"
  fi

  options="--driver $driver --engine-storage-driver overlay"
fi

echo "Creating '$name' with options '$options'..."

