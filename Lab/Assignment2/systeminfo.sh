#! /bin/bash
echo "User :$(whoami)"
echo "System: $(uname -a)"
echo "Shell: $(which $SHELL)"
echo "Current working dir: $(pwd)"
echo "All files: $(ls)"
