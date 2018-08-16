#!/bin/bash

sudo sed -i '' '1a\
auth       sufficient     pam_tid.so
' /etc/pam.d/sudo
