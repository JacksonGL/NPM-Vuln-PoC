#!/bin/bash
# author: Liang Gong

if [ "$(uname)" == "Darwin" ]; then
    # under Mac OS X platform
    NODE='node'       
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # under GNU/Linux platform
    NODE='nodejs'
fi

pkg_name='mysql2csv'
vuln_file='/tmp/help-topic-32.csv'
cd arbitrary-write/${pkg_name}

RED='\033[0;31m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

rm -f ${vuln_file}
if [ ! -f $vuln_file ]; then
    echo -e "\t[${GREEN}vuln file does not exist${NC}]: ${vuln_file}"
fi

# start the server
echo -e "\t[${GREEN}start vulnerable package${NC}]: ${BLUE}${pkg_name}${NC}"
$NODE test.js >/dev/null 2>&1  &
vulnpid=$!

# wait for the server to get started
sleep 1.5s

if [ -f $vuln_file ]; then
    echo -e "\t[${RED}vulnerable file written${NC}]: ${vuln_file}"
fi

# kill the vulnerable npm package's process
kill -9 $vulnpid >/dev/null 2>&1
