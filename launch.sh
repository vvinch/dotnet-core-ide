#!/bin/bash

# Initialize extension dir
rsync -ar /initial-extensions/* /extensions

# Start VSCODE
code ${VS_OPTIONS} --disable-gpu --extensions-dir /extensions -n .