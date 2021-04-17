#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /myapp/tmp/pids/server.pid

# 2021-04-17T17:24:22.780946+00:00 app[web.1]: /myapp/vendor/bundle/ruby/2.7.0/gems/bootsnap-1.7.3/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:23:in `require': libffi.so.7: cannot open shared object file: No such file or directory - /myapp/vendor/bundle/ruby/2.7.0/gems/ffi-1.13.1/lib/ffi_c.so (LoadError)

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
