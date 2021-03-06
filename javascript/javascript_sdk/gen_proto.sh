#!/bin/bash

SRC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
OUT_DIR="${SRC_DIR}/js_proto"
PROTO_DIR="${SRC_DIR}/../../proto"

if [ ! -d $OUT_DIR ]; then
  mkdir $OUT_DIR
fi

protoc \
  --proto_path=$PROTO_DIR \
  --js_out=import_style=commonjs,binary:$OUT_DIR \
  $PROTO_DIR/*.proto