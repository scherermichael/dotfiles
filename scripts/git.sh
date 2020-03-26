#!/bin/bash

command -v git > /dev/null || exit 0

GIT_USER=${GIT_USER:-Michael Scherer}
GIT_EMAIL=${GIT_EMAIL:-mail@scherermichael.net}

git config --global user.name "${GIT_USER}"
git config --global user.email ${GIT_EMAIL}

git config --global remote.origin.prune true
git config --global push.default simple

git config --global commit.gpgsign true
