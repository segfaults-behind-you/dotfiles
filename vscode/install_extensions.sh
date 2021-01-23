#!/usr/bin/env zsh
cat extensions.txt | xargs -n 1 code-insiders --install-extension
