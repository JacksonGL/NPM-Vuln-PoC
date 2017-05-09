#!/bin/bash
# author: Liang Gong

if [ "$(uname)" == "Darwin" ]; then
    # under Mac OS X platform
    NODE='node'       
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # under GNU/Linux platform
    NODE='nodejs'
fi

if [ ! -d node_modules/unicorn-list ]; then
    echo 'install unicorn-list'
    wget https://registry.npmjs.org/unicorn-list/-/unicorn-list-1.0.4.tgz
    tar -xvf unicorn-list-1.0.4.tgz
    mkdir node_modules/unicorn-list
    mv package/* node_modules/unicorn-list
    rm *.tgz
    rm -rf package
fi

cd directory-traversal/unicorn-list

RED='\033[0;31m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# start the server
echo -e "\t[${GREEN}start vulnerable server${NC}]: ${BLUE}unicorn-list${NC}"
$NODE test.js >/dev/null 2>&1  &
vulnpid=$!

# wait for the server to get started
sleep 1.5s

echo -e "\t[${GREEN}server root directory${NC}]: `pwd`"

# utilize directory traversal to get files outside the working directory
# trigger directory traversal issues: send a request to retrieve the confidential file outside the working directory
$NODE attack.js

# kill the vulnerable npm package's process
kill -9 $vulnpid
