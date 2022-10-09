#!/bin/bash
set -e

RAILS_PORT=8080

if [ -n "$PORT" ]; then
  RAILS_PORT=$PORT
fi

bin/rails assets:precompile
bin/rails db:prepare
bin/rails db:seed

rm -f tmp/pids/server.pid

bin/rails s -p $PORT -b 0.0.0.0
