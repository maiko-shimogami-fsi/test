#!/bin/bash

#*********************
#ディレクトリーの設定
#*********************

cd $APP_MEASURE/.git/

index.lock

#if [ -e index.lock ];then
#  echo remove index.lock
#  ls -al
#  rm -rf index.lock
#  ls -al
#fi

  cmdstatus=$?
  echo "cmdstatus=$cmdstatus"

  if [ $cmdstatus -ne 0 ]; then
   echo "チェックアウトが失敗しました。"
   # 実行を終了させる
   exit $cmdstatus
  fi
#else
# echo "else"
#fi
