#!/bin/bash

result=$(eval byobu list 2>&1)

if [[ "$result" == *"no server running on /tmp/tmux-1000/default"* ]]; then
  byobu new
else
  byobu
fi
