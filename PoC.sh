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


echo -e "\nDirectory traversal: mfrs"
./directory-traversal/mfrs/PoC.sh

echo -e "\nDirectory traversal: thrushs"
./directory-traversal/thrushs/PoC.sh

echo -e "\nDirectory traversal: weather.swlyons"
./directory-traversal/weather.swlyons/PoC.sh

echo -e "\nDirectory traversal: reecerver"
./directory-traversal/reecerver/PoC.sh

echo -e "\nDirectory traversal: quickserver"
./directory-traversal/quickserver/PoC.sh

echo -e "\nDirectory traversal: rtcmulticonnection-client"
./directory-traversal/rtcmulticonnection-client/PoC.sh

echo -e "\nDirectory traversal: lessindex"
./directory-traversal/lessindex/PoC.sh

echo -e "\nDirectory traversal: mockserve"
./directory-traversal/mockserve/PoC.sh

echo -e "\nDirectory traversal: hftp"
./directory-traversal/hftp/PoC.sh

echo -e "\nDirectory traversal: jn_jj_server"
./directory-traversal/jn_jj_server/PoC.sh

echo -e "\nDirectory traversal: pooledwebsocket"
./directory-traversal/pooledwebsocket/PoC.sh

echo -e "\nDirectory traversal: tmock"
./directory-traversal/tmock/PoC.sh

echo -e "\nDirectory traversal: fast-http-cli"
./directory-traversal/fast-http-cli/PoC.sh

echo -e "\nDirectory traversal: fsk-server"
./directory-traversal/fsk-server/PoC.sh

echo -e "\nDirectory traversal: badjs-sourcemap-server"
./directory-traversal/badjs-sourcemap-server/PoC.sh

echo -e "\nDirectory traversal: earlybird"
./directory-traversal/earlybird/PoC.sh

echo -e "\nDirectory traversal: guaycuru"
./directory-traversal/guaycuru/PoC.sh

echo -e "\nDirectory traversal: tiny-http"
./directory-traversal/tiny-http/PoC.sh

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
