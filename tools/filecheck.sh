#!/bin/bash

pwd
#フォルダ作成
#mkdir temp
ls -al

echo "copy start"
cp CI_env_info.txt /temp/CI_env_info.txt
zip -r myfiles.zip temp

ls -al
