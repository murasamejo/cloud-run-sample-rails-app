#!/bin/bash
set -e

RAILS_PORT=8080

if [ -n "$PORT" ]; then
  RAILS_PORT=$PORT
fi

# migration
# bin/rails db:migrate RAILS_ENV=production

# assets precompile
# bundle exec rake assets:precompile RAILS_ENV=production

# Remove a potentially pre-existing server.pid for Rails.
rm -f tmp/pids/server.pid

bin/rails s -p $PORT -b 0.0.0.0
