#!/bin/bash
# author: Liang Gong

if [ "$(uname)" == "Darwin" ]; then
    # under Mac OS X platform
    NODE='node'       
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # under GNU/Linux platform
    NODE='nodejs'
fi

cd directory-traversal/crud-file-server

RED='\033[0;31m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# start the server
echo -e "\t[${GREEN}start vulnerable server${NC}]: ${BLUE}crud-file-server${NC}"
$NODE ../../node_modules/crud-file-server/bin/crud-file-server -f . -p 8879 >/dev/null 2>&1  &
vulnpid=$!

# wait for the server to get started
sleep 1.5s

echo -e "\t[${GREEN}server root directory${NC}]: `pwd`"

# utilize directory traversal to get files outside the working directory
# trigger directory traversal issues: send a request to retrieve the confidential file outside the working directory
$NODE attack.js

# kill the vulnerable npm package's process
kill -9 $vulnpid
