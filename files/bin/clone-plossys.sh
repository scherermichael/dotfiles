#!/bin/bash

TARGET=${1}

if [ -z "${TARGET}" ]; then
  TARGET=plossys
fi

mkdir -p "${TARGET}"
pushd "${TARGET}"
git clone git@github.com:plossys/plossys
plossys/scripts/github/list-all-repos.sh | sort | plossys/scripts/github/clone.sh
ORG=sealsystems plossys/scripts/github/list-all-repos.sh | sort | ORG=sealsystems plossys/scripts/github/clone.sh
popd
