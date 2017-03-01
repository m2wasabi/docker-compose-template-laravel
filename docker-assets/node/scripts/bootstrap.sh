#!/bin/sh

cd /app

# npm Install
npm install

# start web server
echo "Boot node.js server"
node ./server.js
