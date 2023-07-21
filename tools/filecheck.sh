#!/bin/bash

pwd
#フォルダ作成
#mkdir temp
ls -al

chmod 777 temp

echo "copy start"
cp /tools/errorcheck.sh /temp/errorcheck.sh

zip -r myfiles.zip temp

ls -al
