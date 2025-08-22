#!/usr/bin/env bash

set -euo pipefail

git add .
git commit -m "backup: $(date '+%Y-%m-%d@%H:%M:%S')"
git push
