#!/bin/bash

TARGET=${1}

if [ -z "${TARGET}" ]; then
  TARGET=plossys
fi

mkdir -p "${TARGET}"
cd "${TARGET}"
git clone git@github.com:plossys/Plossys
Plossys/scripts/github/list-all-repos.sh | sort | Plossys/scripts/github/clone.sh
