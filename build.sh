#!/bin/bash

time (meteor npm install --omit=dev && \
meteor build build --directory --platforms=web.browser)

echo "Bundle built to directory build"
