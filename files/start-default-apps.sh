#!/bin/bash

# W
aerospace workspace W
sleep 1
open "/Applications/Safari.app"
sleep 2
aerospace move-node-to-workspace W

# B
aerospace workspace B
sleep 1
open "${HOME}/Applications/Obsidian.app"
sleep 2
aerospace move-node-to-workspace B

# T
aerospace workspace T
sleep 1
[ -f "${HOME}/Documents/$(date "+Stechuhr %Y-%m.numbers")" ] || cp "${HOME}/Documents/$(date -v-1m "+Stechuhr %Y-%m.numbers")" "${HOME}/Documents/$(date "+Stechuhr %Y-%m.numbers")"
open "${HOME}/Documents/$(date "+Stechuhr %Y-%m.numbers")"
sleep 2
aerospace move-node-to-workspace T
open -n /System/Applications/Utilities/Terminal.app
sleep 2
aerospace move-node-to-workspace T

# C
aerospace workspace C
sleep 1
open "/Applications/Microsoft Teams.app"
sleep 2
aerospace move-node-to-workspace C
open "/Applications/Microsoft Outlook.app"
sleep 2
aerospace move-node-to-workspace C

# 1
aerospace workspace 1
