#!/bin/bash

pwd
#フォルダ作成
#mkdir temp
ls -al

chmod 777 temp

echo "copy start"
\cp -f CI_env_info.txt /test/temp/CI_env_info.txt

zip -r myfiles.zip temp

ls -al
