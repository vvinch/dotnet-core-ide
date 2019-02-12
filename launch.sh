#!/bin/bash

# Initialize extension dir
rsync -an /initial-extensions /extensions

# Start VSCODE
code --verbose --disable-gpu --extensions-dir /extensions -n .