#!/bin/bash

#*********************
#ディレクトリーの設定
#*********************
# 1nodeのディレクトリ
APP_MEASURE=/work/app_measure_proctime_1node

#1node環境へ移動
cd $APP_MEASURE

TARGET_SOFT="aaaaabbbbb"
TARGET_SOFT_NUM=${#TARGET_SOFT}

#TARGET_SOFTが7桁以上かつすべての文字が16進であるかどうか
if [ "$TARGET_SOFT_NUM" -ge 7 ] && (echo "$TARGET_SOFT" | grep -Eq '^[[:xdigit:]]+$') ; then
  
  #SHA1の場合
  echo "SHA1=$TARGET_SOFT"
  
  #入力されたブランチ名orSHA1が存在するか確認する
  if git rev-parse --quiet --verify $TARGET_SOFT; then
   
   #指定したSHA1でcheckout
   git checkout $TARGET_SOFT
   
  else
   git checkout $TARGET_SOFT
   echo "$TARGET_SOFT は存在しません。処理を終了します。"
  fi

  cmdstatus=$?
  echo "cmdstatus=$cmdstatus"

  if [ $cmdstatus -ne 0 ]; then
   echo "チェックアウトが失敗しました。"
   # 実行を終了させる
   exit $cmdstatus
  fi
else
 echo "else"
fi
