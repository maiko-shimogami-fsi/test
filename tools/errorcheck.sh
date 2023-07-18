#!/bin/bash

#****************************************
#対象のディレクトリーが存在するかをチェック
#****************************************
#入力dataから取得
#暫定：入力dataを保存したtextが同階層にある場合
NODE_tmp=$(head -n 1 CI_env_info.txt)
NODE=`echo $NODE_tmp | cut -d: -f2`
echo "NODE=$NODE"

#cd $TEST_JSON_DIR

#Nodeの値からmodule_dir_libを取得する
MODULE_DIR_LIB=$(jq -r '.[] | select(.NodeName == "'$NODE'").module_dir_lib' test_env_info.json)
echo $MODULE_DIR_LIB

#TARGET_COMPOの有無をチェック
if [ -d "$TARGET_COMPO" ]; then
  echo $TARGET_COMPO
else
  echo "$TARGET_COMPO は存在しません。処理を終了します。"
  exit 1
fi
