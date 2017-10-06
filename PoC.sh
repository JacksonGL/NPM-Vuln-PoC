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

# arbitrary file overwrite issues

echo -e "\nArbitrary write: innomon"
./arbitrary-write/innomon/PoC.sh

echo -e "\nArbitrary write: parse-ssi"
./arbitrary-write/parse-ssi/PoC.sh

echo -e "\nArbitrary write: connect-parse-php"
./arbitrary-write/connect-parse-php/PoC.sh

echo -e "\nArbitrary write: frvr"
./arbitrary-write/frvr/PoC.sh

echo -e "\nArbitrary write: mysql2csv"
./arbitrary-write/mysql2csv/PoC.sh

echo -e "\nArbitrary write: lam"
./arbitrary-write/lam/PoC.sh

echo -e "\nArbitrary write: thrushs"
./arbitrary-write/thrushs/PoC.sh

echo -e "\nArbitrary write: wisper"
./arbitrary-write/wisper/PoC.sh

# directory traversal issues

echo -e "\nDirectory traversal: nodeserver-jta"
./directory-traversal/nodeserver-jta/PoC.sh

echo -e "\nDirectory traversal: severzlt"
./directory-traversal/severzlt/PoC.sh

echo -e "\nDirectory traversal: ljjnodeserve"
./directory-traversal/ljjnodeserve/PoC.sh

echo -e "\nDirectory traversal: wangshuai"
./directory-traversal/wangshuai/PoC.sh

echo -e "\nDirectory traversal: tinyserver"
./directory-traversal/tinyserver/PoC.sh

echo -e "\nDirectory traversal: nopach"
./directory-traversal/nopach/PoC.sh

echo -e "\nDirectory traversal: nodejs.jseidl"
./directory-traversal/nodejs.jseidl/PoC.sh

echo -e "\nDirectory traversal: xbhxbh"
./directory-traversal/xbhxbh/PoC.sh

echo -e "\nDirectory traversal: ghod5servercs360"
./directory-traversal/ghod5servercs360/PoC.sh

echo -e "\nDirectory traversal: hechatroom"
./directory-traversal/hechatroom/PoC.sh

echo -e "\nDirectory traversal: lihuini"
./directory-traversal/lihuini/PoC.sh

echo -e "\nDirectory traversal: xxf11"
./directory-traversal/xxf11/PoC.sh

echo -e "\nDirectory traversal: cxy"
./directory-traversal/cxy/PoC.sh

echo -e "\nDirectory traversal: srverqq"
./directory-traversal/srverqq/PoC.sh

echo -e "\nDirectory traversal: servergmf"
./directory-traversal/servergmf/PoC.sh

echo -e "\nDirectory traversal: lzl123"
./directory-traversal/lzl123/PoC.sh

echo -e "\nDirectory traversal: section2.madisonjbrooks12"
./directory-traversal/section2.madisonjbrooks12/PoC.sh

echo -e "\nDirectory traversal: susu-sum"
./directory-traversal/susu-sum/PoC.sh

echo -e "\nDirectory traversal: welcomyzt"
./directory-traversal/welcomyzt/PoC.sh

echo -e "\nDirectory traversal: yjmyjmyjm"
./directory-traversal/yjmyjmyjm/PoC.sh

echo -e "\nDirectory traversal: caolilinode"
./directory-traversal/caolilinode/PoC.sh

echo -e "\nDirectory traversal: commentapp.stetsonwood"
./directory-traversal/commentapp.stetsonwood/PoC.sh

echo -e "\nDirectory traversal: cypserver"
./directory-traversal/cypserver/PoC.sh

echo -e "\nDirectory traversal: dcdcdcdcdc"
./directory-traversal/dcdcdcdcdc/PoC.sh

echo -e "\nDirectory traversal: 360class.jansenhm"
./directory-traversal/360class.jansenhm/PoC.sh

echo -e "\nDirectory traversal: goserv"
./directory-traversal/goserv/PoC.sh

echo -e "\nDirectory traversal: http_static_simple"
./directory-traversal/http_static_simple/PoC.sh

echo -e "\nDirectory traversal: lab6drewfusbyu"
./directory-traversal/lab6drewfusbyu/PoC.sh

echo -e "\nDirectory traversal: serve46"
./directory-traversal/serve46/PoC.sh

echo -e "\nDirectory traversal: serverxxx"
./directory-traversal/serverxxx/PoC.sh

echo -e "\nDirectory traversal: shenliru"
./directory-traversal/shenliru/PoC.sh

echo -e "\nDirectory traversal: simple-npm-registry"
./directory-traversal/simple-npm-registry/PoC.sh

echo -e "\nDirectory traversal: chatbyvista"
./directory-traversal/chatbyvista/PoC.sh

echo -e "\nDirectory traversal: byucslabsix"
./directory-traversal/byucslabsix/PoC.sh

echo -e "\nDirectory traversal: dmmcquay.lab6"
./directory-traversal/dmmcquay.lab6/PoC.sh

echo -e "\nDirectory traversal: elding"
./directory-traversal/elding/PoC.sh

echo -e "\nDirectory traversal: wffserve"
./directory-traversal/wffserve/PoC.sh

echo -e "\nDirectory traversal: node-simple-router"
./directory-traversal/node-simple-router/PoC.sh

echo -e "\nDirectory traversal: liuyaserver"
./directory-traversal/liuyaserver/PoC.sh

echo -e "\nDirectory traversal: city-weather-abe"
./directory-traversal/city-weather-abe/PoC.sh

echo -e "\nDirectory traversal: yttivy"
./directory-traversal/yttivy/PoC.sh

echo -e "\nDirectory traversal: wintiwebdev"
./directory-traversal/wintiwebdev/PoC.sh

echo -e "\nDirectory traversal: node-server-forfront"
./directory-traversal/node-server-forfront/PoC.sh

echo -e "\nDirectory traversal: dylmomo"
./directory-traversal/dylmomo/PoC.sh

echo -e "\nDirectory traversal: sly07"
./directory-traversal/sly07/PoC.sh

echo -e "\nDirectory traversal: sgqserve"
./directory-traversal/sgqserve/PoC.sh

echo -e "\nDirectory traversal: serverliujiayi1"
./directory-traversal/serverliujiayi1/PoC.sh

echo -e "\nDirectory traversal: jansenstuffpleasework"
./directory-traversal/jansenstuffpleasework/PoC.sh

echo -e "\nDirectory traversal: infraserver"
./directory-traversal/infraserver/PoC.sh

echo -e "\nDirectory traversal: getcityapi.yoehoehne"
./directory-traversal/getcityapi.yoehoehne/PoC.sh

echo -e "\nDirectory traversal: wangguojing123"
./directory-traversal/wangguojing123/PoC.sh

echo -e "\nDirectory traversal: peiserver"
./directory-traversal/peiserver/PoC.sh

echo -e "\nDirectory traversal: myserver.alexcthomas18"
./directory-traversal/myserver.alexcthomas18/PoC.sh

echo -e "\nDirectory traversal: looppake"
./directory-traversal/looppake/PoC.sh

echo -e "\nDirectory traversal: lab6.brit95"
./directory-traversal/lab6.brit95/PoC.sh

echo -e "\nDirectory traversal: jikes"
./directory-traversal/jikes/PoC.sh

echo -e "\nDirectory traversal: serverabc"
./directory-traversal/serverabc/PoC.sh

echo -e "\nDirectory traversal: serverlyr"
./directory-traversal/serverlyr/PoC.sh

echo -e "\nDirectory traversal: serverhuwenhui"
./directory-traversal/serverhuwenhui/PoC.sh

echo -e "\nDirectory traversal: serveryztyzt"
./directory-traversal/serveryztyzt/PoC.sh

echo -e "\nDirectory traversal: calmquist.static-server"
./directory-traversal/calmquist.static-server/PoC.sh

echo -e "\nDirectory traversal: enserver"
./directory-traversal/enserver/PoC.sh

echo -e "\nDirectory traversal: citypredict.whauwiller"
./directory-traversal/citypredict.whauwiller/PoC.sh

echo -e "\nDirectory traversal: dgard8.lab6"
./directory-traversal/dgard8.lab6/PoC.sh

echo -e "\nDirectory traversal: dcserver"
./directory-traversal/dcserver/PoC.sh

echo -e "\nDirectory traversal: yyooopack"
./directory-traversal/yyooopack/PoC.sh

echo -e "\nDirectory traversal: zwserver"
./directory-traversal/zwserver/PoC.sh

echo -e "\nDirectory traversal: intsol-package"
./directory-traversal/intsol-package/PoC.sh

echo -e "\nDirectory traversal: iter-server"
./directory-traversal/iter-server/PoC.sh

echo -e "\nDirectory traversal: whispercast"
./directory-traversal/whispercast/PoC.sh

echo -e "\nDirectory traversal: shit-server"
./directory-traversal/shit-server/PoC.sh

echo -e "\nDirectory traversal: serverwzl"
./directory-traversal/serverwzl/PoC.sh

echo -e "\nDirectory traversal: serverwg"
./directory-traversal/serverwg/PoC.sh

echo -e "\nDirectory traversal: cuciuci"
./directory-traversal/cuciuci/PoC.sh

echo -e "\nDirectory traversal: 22lixian"
./directory-traversal/22lixian/PoC.sh

echo -e "\nDirectory traversal: liyujing"
./directory-traversal/liyujing/PoC.sh

echo -e "\nDirectory traversal: gaoxiaotingtingting"
./directory-traversal/gaoxiaotingtingting/PoC.sh

echo -e "\nDirectory traversal: unicorn-list"
./directory-traversal/unicorn-list/PoC.sh

echo -e "\nDirectory traversal: utahcityfinder"
./directory-traversal/utahcityfinder/PoC.sh

# needs a sql database to make it work
# echo -e "\nDirectory traversal: qinserve"
# ./directory-traversal/qinserve/PoC.sh

echo -e "\nDirectory traversal: picard"
./directory-traversal/picard/PoC.sh

echo -e "\nDirectory traversal: sspa"
./directory-traversal/sspa/PoC.sh

echo -e "\nDirectory traversal: ewgaddis.lab6"
./directory-traversal/ewgaddis.lab6/PoC.sh

echo -e "\nDirectory traversal: exxxxxxxxxxx"
./directory-traversal/exxxxxxxxxxx/PoC.sh

echo -e "\nDirectory traversal: fbr-client"
./directory-traversal/fbr-client/PoC.sh

echo -e "\nDirectory traversal: censorify.tanisjr"
./directory-traversal/censorify.tanisjr/PoC.sh

echo -e "\nDirectory traversal: dasafio"
./directory-traversal/dasafio/PoC.sh

echo -e "\nDirectory traversal: wenluhong1"
./directory-traversal/wenluhong1/PoC.sh

echo -e "\nDirectory traversal: zjjserver"
./directory-traversal/zjjserver/PoC.sh

echo -e "\nDirectory traversal: uv-tj-demo"
./directory-traversal/uv-tj-demo/PoC.sh

echo -e "\nDirectory traversal: yzt"
./directory-traversal/yzt/PoC.sh

echo -e "\nDirectory traversal: uekw1511server"
./directory-traversal/uekw1511server/PoC.sh

echo -e "\nDirectory traversal: 11xiaoli"
./directory-traversal/11xiaoli/PoC.sh

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
