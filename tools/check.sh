#!/bin/bash

#引数をENV_VAR_EXEに設定
ENV_VAR_EXE=$1

if [ "$ENV_VAR_EXE" = "env_JQ" ]; then
 echo "env_JQ"
elif [ "$ENV_VAR_EXE" = "env_WbyT" ]; then
 echo "env_WbyT"
else
 echo "else"
fi

echo "end"
