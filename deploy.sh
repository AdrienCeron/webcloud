#!/bin/bash
  tail -n +3 "$0" | ssh root@; exit
# Prevent errors
  set -eu
#update the server
  apt-get update
