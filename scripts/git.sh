#!/bin/bash

command -v git > /dev/null || exit 0

GIT_USER=${GIT_USER:-Michael Scherer}
GIT_EMAIL=${GIT_EMAIL:-mail@scherermichael.net}

git config --global user.name "${GIT_USER}"
git config --global user.email "${GIT_EMAIL}"

# Global exclude file (see also: files/.gitexcludes)
git config --global core.excludesfile "${HOME}/.gitexcludes"
# Remove obsolete remote branches
git config --global remote.origin.prune true
# Push only to a remote branch with the same name
git config --global push.default simple
# Simply print list of branches
git config --global pager.branch false
# Keep default merge strategy
git config --global pull.rebase false
