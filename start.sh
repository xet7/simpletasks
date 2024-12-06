#!/bin/bash

export MONGO_URL=mongodb://127.0.0.1:27017/wekan
export ROOT_URL=http://localhost:2000
export PORT=2000

cd bundle
echo "Starting to http://localhost:2000"
node main.js
cd ..
