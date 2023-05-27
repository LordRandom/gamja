#!/bin/sh

ROOT=$(pwd)
cd client

npm install --include=dev
npm run build

if [ -e ${ROOT}/config.json ]; then
  cp -v ${ROOT}/config.json ./dist/config.json
fi
