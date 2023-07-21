#!/bin/bash

pwd
#フォルダ作成
mkdir temp
ls -al

chmod 777 temp

echo "copy start"
cp /home/runner/work/test/test/tools/errorcheck.sh /home/runner/work/test/test/temp/errorcheck.sh

zip -r myfiles.zip temp

ls -al
