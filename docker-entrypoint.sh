#!/bin/bash
set -e


# do the dirt setup only if requested. lets us
# get a shell or whatever if needed
if [ "$1" = "dirt" ]; then
    echo "I am Dirt"
else
    exec "$@"
fi


