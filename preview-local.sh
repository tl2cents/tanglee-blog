#!/usr/bin/env bash
set -euo pipefail

cd -- "$(dirname -- "${BASH_SOURCE[0]}")"

echo "Blog preview: http://127.0.0.1:4000/"
echo "Academic homepage: http://127.0.0.1:4001/ (start its preview separately)"

exec bundle exec jekyll serve \
  --config _config.yml,_config.local.yml \
  --host 127.0.0.1 --port 4000 \
  --livereload --livereload-port 35729 --force_polling "$@"
