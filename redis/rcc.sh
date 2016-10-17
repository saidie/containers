#!/bin/sh

docker run -v $PWD:/src saidie/redis \
       /bin/sh -c "cd /src; /bin/sh compile.sh"
