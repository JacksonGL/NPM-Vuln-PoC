#!/bin/bash
# Author: Liang Gong

# usage:   ./scripts/poc-dir.sh PKG-NAME PORT
# example: ./scripts/poc-dir.sh wenluhong1 8888

mkdir directory-traversal/$1
cp directory-traversal/template/* directory-traversal/$1

sed -i '' -e "s/PKGNAME/$1/g" directory-traversal/$1/test.js
sed -i '' -e "s/PKGNAME/$1/g" directory-traversal/$1/PoC.sh
sed -i '' -e "s/PORT/$2/g" directory-traversal/$1/attack.js

# add script to PoC.sh
ORIG="# directory traversal issues"
NEW="# directory traversal issues\\
\\
echo -e \\\"\\\\nDirectory traversal: $1\\\"\\
.\/directory-traversal\/$1\/PoC.sh"

ARGS="s/${ORIG}/${NEW}/g"

sed -i '' -e ':a' -e 'N' -e '$!ba' -e "$ARGS" PoC.sh
