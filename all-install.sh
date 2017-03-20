#!/usr/bin/env bash

dirname=$(dirname "$0")

${dirname}/docker-install.sh
${dirname}/pwntools-install.sh
${dirname}/powerline/all-powerline-install.sh
${dirname}/zsh/all-zsh-install.sh
