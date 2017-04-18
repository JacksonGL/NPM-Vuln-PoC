#!/bin/bash
# Author: Liang Gong


if [ "$(uname)" == "Darwin" ]; then
    # under Mac OS X platform
    NODE='node'       
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # under GNU/Linux platform
    NODE='nodejs'
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    echo 'Sorry. This PoC only supports Linux/Mac OS.'
    exit
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    # under 64 bits Windows NT platform
    echo 'Sorry. This PoC only supports Linux/Mac OS.'
    exit
fi

echo -e "\nDirectory traversal: iter-http"
./directory-traversal/iter-http/PoC.sh

echo -e "\nDirectory traversal: datachannel-client"
./directory-traversal/datachannel-client/PoC.sh

echo -e "\nDirectory traversal: static-html-server"
./directory-traversal/static-html-server/PoC.sh

echo -e "\nDirectory traversal: cyber-js"
./directory-traversal/cyber-js/PoC.sh

echo -e "\nDirectory traversal: xtalk"
./directory-traversal/xtalk/PoC.sh

echo -e "\nDirectory traversal: easyquick"
./directory-traversal/easyquick/PoC.sh

echo -e "\nDirectory traversal: sencisho"
./directory-traversal/sencisho/PoC.sh

echo -e "\nDirectory traversal: nodeload-nmickuli"
./directory-traversal/nodeload-nmickuli/PoC.sh

echo -e "\nDirectory traversal: list-n-stream"
./directory-traversal/list-n-stream/PoC.sh
