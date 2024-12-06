#!/bin/bash

time (meteor npm install --omit=dev && \
meteor build build --directory --platforms=web.browser &&
cd build/bundle/programs/server && npm install
)

echo "Bundle built to directory build"
