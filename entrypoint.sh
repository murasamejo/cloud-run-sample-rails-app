#!/bin/bash
set -e

RAILS_PORT=8080

if [ -n "$PORT" ]; then
  RAILS_PORT=$PORT
fi

RAILS_ENV=${RAILS_ENV:-development} bin/rails assets:precompile
RAILS_ENV=${RAILS_ENV:-development} bin/rails db:prepare
RAILS_ENV=${RAILS_ENV:-development} bin/rails db:seed

rm -f tmp/pids/server.pid

RAILS_ENV=${RAILS_ENV:-development} bin/rails s -p $PORT -b 0.0.0.0
