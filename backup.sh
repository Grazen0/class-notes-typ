#!/usr/bin/env bash

set -euo pipefail

git add .
git commit -m "backup: $(date '+%Y-%m-%dT%H:%M:%SZ')"
git push
