#!/bin/bash
if [ -z "$NODE_ENV" ]; then
    export NODE_ENV=production
fi
if [[ $npm == "true" ]] ; then
    cd /usr/src/app/current
    npm install --save
fi
cd /usr/src/app/current
slc run server.js
