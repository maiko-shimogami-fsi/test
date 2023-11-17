#!/bin/bash
INPUT_FOLDER=/home/runner/work/test/test/tools
OUTPUT_FOLDER=/home/runner/work/test/test/tools/tools2

pwd

if [ ! -d "$INPUT_FOLDER" ] || [ ! -d "$OUTPUT_FOLDER" ]; then
      echo "mf4ファイルが格納されていません"
else
      echo "mf4ファイルが格納されてます。"
fi
