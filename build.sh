#!/bin/bash

time (meteor npm install --omit=dev && \
meteor build build --directory --platforms=web.browser &&
cd build/bundle/programs/server && npm install
)

# Because there was error that is at simple-error.txt ,
# it was needed to change to directory build/bundle/programs/server
# and do npm install, like at above.

# Amount of time used is at simple-buildtime.txt
# when used at RasPi4 to build bundle to directory build/bundle.

echo "Bundle built to directory build"
