#!/bin/bash

# The GitHub link given by the package isn't the real source code. Download the real source code from the dist.tarball field in the package.json file. The package directly uses the requested url as the path for file system reading and send those files over the network.

# Therefore, we first need to download the script
# the following tarball url is obtained from the following command:
# npm view cyber-js
# in the dist -> tarball field
# https://registry.npmjs.org/cyber-js/-/cyber-js-1.0.7.tgz

if [ "$(uname)" == "Darwin" ]; then
    # under Mac OS X platform
    NODE='node'       
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # under GNU/Linux platform
    NODE='nodejs'
fi

wget https://registry.npmjs.org/cyber-js/-/cyber-js-1.0.7.tgz
tar -xvzf cyber-js*.tgz
rm cyber-js*.tgz

rm -rf node_modules/cyber-js
mkdir node_modules/cyber-js
mv package/* node_modules/cyber-js/
rm -rf package


cd directory-traversal/cyber-js

RED='\033[0;31m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# start the server
echo -e "\t[${GREEN}start vulnerable server${NC}]: ${BLUE}cyber-js${NC}"
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