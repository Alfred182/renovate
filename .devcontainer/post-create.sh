#!/bin/bash

set -e

if [[ "${CODESPACES}" == true ]]; then
  echo "Fixing permissions of /tmp for GitHub Codespaces..." >&2
  sudo chmod 1777 /tmp
fi

# Ensure the node cache directory exists with proper permissions
mkdir -p ~/.cache/node
chmod -R 777 ~/.cache/node

set -x

exec pnpm install