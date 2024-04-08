#!/bin/bash
dir=$(dirname $(realpath $0))
export IDF_TOOLS_PATH=$dir
. $dir/esp-idf/export.sh
