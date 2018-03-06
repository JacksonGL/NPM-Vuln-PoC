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

echo -e "\nDirectory traversal: web-server-mock"
./directory-traversal/web-server-mock/PoC.sh

echo -e "\nDirectory traversal: iceman178.weather.cs360"
./directory-traversal/iceman178.weather.cs360/PoC.sh

echo -e "\nDirectory traversal: serverfff"
./directory-traversal/serverfff/PoC.sh

echo -e "\nDirectory traversal: servewuqianqianqian"
./directory-traversal/servewuqianqianqian/PoC.sh

echo -e "\nDirectory traversal: wenluhong111"
./directory-traversal/wenluhong111/PoC.sh

echo -e "\nDirectory traversal: nodeload"
./directory-traversal/nodeload/PoC.sh

echo -e "\nDirectory traversal: shenliru3"
./directory-traversal/shenliru3/PoC.sh

echo -e "\nDirectory traversal: songcaihong"
./directory-traversal/songcaihong/PoC.sh

echo -e "\nDirectory traversal: yxxserver"
./directory-traversal/yxxserver/PoC.sh

echo -e "\nDirectory traversal: yypsulie11"
./directory-traversal/yypsulie11/PoC.sh

echo -e "\nDirectory traversal: rapid-httpserver"
./directory-traversal/rapid-httpserver/PoC.sh

echo -e "\nDirectory traversal: myserve111"
./directory-traversal/myserve111/PoC.sh

echo -e "\nDirectory traversal: serveryyl"
./directory-traversal/serveryyl/PoC.sh

echo -e "\nDirectory traversal: zxyserver"
./directory-traversal/zxyserver/PoC.sh

echo -e "\nDirectory traversal: proxey"
./directory-traversal/proxey/PoC.sh

echo -e "\nDirectory traversal: web-node-server"
./directory-traversal/web-node-server/PoC.sh

echo -e "\nDirectory traversal: wrlc"
./directory-traversal/wrlc/PoC.sh

echo -e "\nDirectory traversal: cs360getcity"
./directory-traversal/cs360getcity/PoC.sh

echo -e "\nDirectory traversal: wuzhuangserver"
./directory-traversal/wuzhuangserver/PoC.sh

echo -e "\nDirectory traversal: weathertest.bryceperkins"
./directory-traversal/weathertest.bryceperkins/PoC.sh

echo -e "\nDirectory traversal: websvr"
./directory-traversal/websvr/PoC.sh

echo -e "\nDirectory traversal: webkit-devtools-agent-frontend"
./directory-traversal/webkit-devtools-agent-frontend/PoC.sh

echo -e "\nDirectory traversal: willvdb_test_server"
./directory-traversal/willvdb_test_server/PoC.sh

echo -e "\nDirectory traversal: caolilinode1"
./directory-traversal/caolilinode1/PoC.sh

echo -e "\nDirectory traversal: binocular-lamp"
./directory-traversal/binocular-lamp/PoC.sh

echo -e "\nDirectory traversal: simple-mock-server"
./directory-traversal/simple-mock-server/PoC.sh

echo -e "\nDirectory traversal: easy-router"
./directory-traversal/easy-router/PoC.sh

echo -e "\nDirectory traversal: mime_web_server"
./directory-traversal/mime_web_server/PoC.sh

echo -e "\nDirectory traversal: xingbaohai"
./directory-traversal/xingbaohai/PoC.sh

echo -e "\nDirectory traversal: express-blinker"
./directory-traversal/express-blinker/PoC.sh

echo -e "\nDirectory traversal: caihong"
./directory-traversal/caihong/PoC.sh

echo -e "\nDirectory traversal: micra"
./directory-traversal/micra/PoC.sh

echo -e "\nDirectory traversal: ptest"
./directory-traversal/ptest/PoC.sh

echo -e "\nDirectory traversal: asset-cache"
./directory-traversal/asset-cache/PoC.sh

echo -e "\nDirectory traversal: wuzhuang"
./directory-traversal/wuzhuang/PoC.sh

echo -e "\nDirectory traversal: cuiaiguang"
./directory-traversal/cuiaiguang/PoC.sh

echo -e "\nDirectory traversal: servedir"
./directory-traversal/servedir/PoC.sh

echo -e "\nDirectory traversal: secure-servedir"
./directory-traversal/secure-servedir/PoC.sh

echo -e "\nDirectory traversal: zhangranbigman"
./directory-traversal/zhangranbigman/PoC.sh

echo -e "\nDirectory traversal: my-sn"
./directory-traversal/my-sn/PoC.sh

echo -e "\nDirectory traversal: wenluhong11"
./directory-traversal/wenluhong11/PoC.sh

echo -e "\nDirectory traversal: nitro-server"
./directory-traversal/nitro-server/PoC.sh

echo -e "\nDirectory traversal: grunt-fileserver"
./directory-traversal/grunt-fileserver/PoC.sh

echo -e "\nDirectory traversal: grunt-serve"
./directory-traversal/grunt-serve/PoC.sh

echo -e "\nDirectory traversal: node-cxc"
./directory-traversal/node-cxc/PoC.sh

echo -e "\nDirectory traversal: ussasasa"
./directory-traversal/ussasasa/PoC.sh

echo -e "\nDirectory traversal: lab6-wclaibor"
./directory-traversal/lab6-wclaibor/PoC.sh

echo -e "\nDirectory traversal: servershuai"
./directory-traversal/servershuai/PoC.sh

echo -e "\nDirectory traversal: fakelearnnodejs"
./directory-traversal/fakelearnnodejs/PoC.sh

echo -e "\nDirectory traversal: server12311"
./directory-traversal/server12311/PoC.sh

echo -e "\nDirectory traversal: node-static-webserver"
./directory-traversal/node-static-webserver/PoC.sh

echo -e "\nDirectory traversal: node-http-server"
./directory-traversal/node-http-server/PoC.sh

echo -e "\nDirectory traversal: zhanglina"
./directory-traversal/zhanglina/PoC.sh

echo -e "\nDirectory traversal: censorify.matt.shurtz"
./directory-traversal/censorify.matt.shurtz/PoC.sh

echo -e "\nDirectory traversal: litedoc"
./directory-traversal/litedoc/PoC.sh

echo -e "\nDirectory traversal: lander"
./directory-traversal/lander/PoC.sh

echo -e "\nDirectory traversal: less-livereload"
./directory-traversal/less-livereload/PoC.sh

echo -e "\nDirectory traversal: lab6.1"
./directory-traversal/lab6.1/PoC.sh

echo -e "\nDirectory traversal: serverxh"
./directory-traversal/serverxh/PoC.sh

echo -e "\nDirectory traversal: markdown-server"
./directory-traversal/markdown-server/PoC.sh

echo -e "\nDirectory traversal: httpea"
./directory-traversal/httpea/PoC.sh

echo -e "\nDirectory traversal: isv-http"
./directory-traversal/isv-http/PoC.sh

echo -e "\nDirectory traversal: dilu"
./directory-traversal/dilu/PoC.sh

echo -e "\nDirectory traversal: easy-node-server"
./directory-traversal/easy-node-server/PoC.sh

echo -e "\nDirectory traversal: fast-http"
./directory-traversal/fast-http/PoC.sh

echo -e "\nDirectory traversal: gamebutler"
./directory-traversal/gamebutler/PoC.sh

echo -e "\nDirectory traversal: getstats"
./directory-traversal/getstats/PoC.sh

echo -e "\nDirectory traversal: gfm-srv"
./directory-traversal/gfm-srv/PoC.sh

echo -e "\nDirectory traversal: btnode"
./directory-traversal/btnode/PoC.sh

echo -e "\nDirectory traversal: ex-http-frame"
./directory-traversal/ex-http-frame/PoC.sh

echo -e "\nDirectory traversal: der-server"
./directory-traversal/der-server/PoC.sh

echo -e "\nDirectory traversal: glurp"
./directory-traversal/glurp/PoC.sh

echo -e "\nDirectory traversal: canvas-designer"
./directory-traversal/canvas-designer/PoC.sh

echo -e "\nDirectory traversal: butler-server"
./directory-traversal/butler-server/PoC.sh

echo -e "\nDirectory traversal: bruteser"
./directory-traversal/bruteser/PoC.sh

echo -e "\nDirectory traversal: server-static"
./directory-traversal/server-static/PoC.sh

echo -e "\nDirectory traversal: node-staticserver"
./directory-traversal/node-staticserver/PoC.sh

echo -e "\nDirectory traversal: crud-file-server"
./directory-traversal/crud-file-server/PoC.sh

echo -e "\nDirectory traversal: bae-nodejs"
./directory-traversal/bae-nodejs/PoC.sh

echo -e "\nDirectory traversal: pico-static-server"
./directory-traversal/pico-static-server/PoC.sh

echo -e "\nDirectory traversal: stattic"
./directory-traversal/stattic/PoC.sh

echo -e "\nDirectory traversal: aso-server"
./directory-traversal/aso-server/PoC.sh

echo -e "\nDirectory traversal: atropa-ide"
./directory-traversal/atropa-ide/PoC.sh

echo -e "\nDirectory traversal: atropa-server"
./directory-traversal/atropa-server/PoC.sh

echo -e "\nDirectory traversal: awning"
./directory-traversal/awning/PoC.sh

echo -e "\nDirectory traversal: sabu"
./directory-traversal/sabu/PoC.sh

echo -e "\nDirectory traversal: hserver-static"
./directory-traversal/hserver-static/PoC.sh

echo -e "\nDirectory traversal: basic-static"
./directory-traversal/basic-static/PoC.sh

echo -e "\nDirectory traversal: api-proxy"
./directory-traversal/api-proxy/PoC.sh

echo -e "\nDirectory traversal: html-pages"
./directory-traversal/html-pages/PoC.sh

echo -e "\nDirectory traversal: static-cling"
./directory-traversal/static-cling/PoC.sh

echo -e "\nDirectory traversal: m-server"
./directory-traversal/m-server/PoC.sh

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
