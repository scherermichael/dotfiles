#!/bin/bash

TARGET=${1:-plossys}

mkdir -p "${TARGET}"
pushd "${TARGET}"
git clone git@github.com:plossys/plossys
plossys/scripts/github/list-all-repos.sh | sort | plossys/scripts/github/clone.sh
ORG=sealsystems plossys/scripts/github/list-all-repos.sh | sort | ORG=sealsystems plossys/scripts/github/clone.sh
popd
