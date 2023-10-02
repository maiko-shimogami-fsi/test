#!/bin/bash

#*********************
#ディレクトリーの設定
#*********************
cd ../../..
ls -al

# 1nodeのディレクトリ
APP_MEASURE=work/app_measure_proctime_1node

#1node環境へ移動
cd $APP_MEASURE

TARGET_SOFT=main
#TARGET_SOFT_NUM=${#TARGET_SOFT}

#TARGET_SOFTが7桁以上かつすべての文字が16進であるかどうか
#if [ "$TARGET_SOFT_NUM" -ge 7 ] && (echo "$TARGET_SOFT" | grep -Eq '^[[:xdigit:]]+$') ; then
  
  #SHA1の場合
  echo "SHA1=$TARGET_SOFT"
  
  #入力されたブランチ名orSHA1が存在するか確認する
  if git rev-parse --quiet --verify origin/$TARGET_SOFT; then
   
   #指定したSHA1でcheckout
   git checkout origin/$TARGET_SOFT
   
  else
   echo "sha1が存在しません。"
   exit 1
  fi

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
