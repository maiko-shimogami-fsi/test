#!/bin/bash

TARGET_SHA1="aaa"

#入力されたブランチ名orSHA1が存在するか確認する
if [ $TARGET_SHA1 = "aaa" ]; then
 
 echo "TARGET_SHA1 = "aaa"です。"

else
 echo "$TARGET_SHA1 は異なります。処理を終了します。"
 exit 1
 
fi
