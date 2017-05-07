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

echo -e "\nDirectory traversal: pytservce"
./directory-traversal/pytservce/PoC.sh

echo -e "\nDirectory traversal: ritp"
./directory-traversal/ritp/PoC.sh

echo -e "\nDirectory traversal: run-this-place"
./directory-traversal/run-this-place/PoC.sh

echo -e "\nDirectory traversal: gaoxuyan"
./directory-traversal/gaoxuyan/PoC.sh

echo -e "\nDirectory traversal: mfrserver"
./directory-traversal/mfrserver/PoC.sh

echo -e "\nDirectory traversal: scott-blanch-weather-app"
./directory-traversal/scott-blanch-weather-app/PoC.sh

echo -e "\nDirectory traversal: myprolyz"
./directory-traversal/myprolyz/PoC.sh

echo -e "\nDirectory traversal: serveryaozeyan"
./directory-traversal/serveryaozeyan/PoC.sh

# needs to be replicated on Windows
# echo -e "\nDirectory traversal: xiongrui-httpserver"
# ./directory-traversal/xiongrui-httpserver/PoC.sh

echo -e "\nDirectory traversal: tinyserver2"
./directory-traversal/tinyserver2/PoC.sh

echo -e "\nDirectory traversal: ltt.js"
./directory-traversal/ltt.js/PoC.sh

echo -e "\nDirectory traversal: ltt"
./directory-traversal/ltt/PoC.sh

echo -e "\nDirectory traversal: tencent-server"
./directory-traversal/tencent-server/PoC.sh

echo -e "\nDirectory traversal: wind-mvc"
./directory-traversal/wind-mvc/PoC.sh

echo -e "\nDirectory traversal: serverzyy"
./directory-traversal/serverzyy/PoC.sh

echo -e "\nDirectory traversal: open-device"
./directory-traversal/open-device/PoC.sh

echo -e "\nDirectory traversal: nodeaaaaa"
./directory-traversal/nodeaaaaa/PoC.sh

echo -e "\nDirectory traversal: desafio"
./directory-traversal/desafio/PoC.sh

echo -e "\nDirectory traversal: hcbserver"
./directory-traversal/hcbserver/PoC.sh

echo -e "\nDirectory traversal: gomeplus-h5-proxy"
./directory-traversal/gomeplus-h5-proxy/PoC.sh

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
