#!/bin/bash

tar czf dsenv-zsh.tgz zsh/

sha256sum *.tgz > ASSETS.txt
