#!/bin/bash
INPUT_FOLDER=/home/runner/work/test/test/tools
OUTPUT_FOLDER=/home/runner/work/test/test/tools/tools2

pwd

if [ ! "$(find "$INPUT_FOLDER" -name '*.mf4')" ] || [ ! "$(find "$OUTPUT_FOLDER" -name '*.mf4')" ]; then
      echo "mf4ファイルが格納されていません"
else
      echo "mf4ファイルが格納されてます。"
fi
