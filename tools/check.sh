#!/bin/bash
INPUT_FOLDER=/test/tools
OUTPUT_FOLDER=/test/tools/tools2

if [ ! "$(find "$INPUT_FOLDER" -name '*.mf4')" ] || [ ! "$(find "$OUTPUT_FOLDER" -name '*.mf4')" ]; then
      echo "mf4ファイルが格納されていません"
else
      echo "mf4ファイルが格納されてます。"
fi
