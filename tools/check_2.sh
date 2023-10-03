#!/bin/bash

#*********************
#ディレクトリーの設定
#*********************

cd /home/runner/work/test/test/

#echo -n > index.lock
rm -rf index.lock

ls -al

cd .git

if [ -e index.lock ];then
  echo remove index.lock
  ls -al
  rm -rf index.lock
  ls -al
fi

#git clean -df

cmdstatus=$?
echo "cmdstatus=$cmdstatus"

if [ $cmdstatus -ne 0 ]; then
  echo "チェックアウトが失敗しました。"
  # 実行を終了させる
  exit $cmdstatus
fi

