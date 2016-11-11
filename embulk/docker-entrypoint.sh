#!/bin/sh
set -e

if [ "$1" = "embulk" ]; then
    exec /bin/sh /embulk/bin/embulk "$@"
fi

exec "$@"
