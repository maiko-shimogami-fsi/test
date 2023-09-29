#!/bin/bash

#引数をENV_VAR_EXEに設定
ENV_VAR_EXE1node=$1
echo "ENV_VAR_EXE=$ENV_VAR_EXE1node"

if [ "$ENV_VAR_EXE1node" = 1 ]; then
 echo "env_JQ"
else
 echo "env_WbyT"
fi

echo "end"
