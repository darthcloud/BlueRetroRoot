#!/bin/bash
dir=$(dirname $(realpath ${BASH_SOURCE[0]:-$0}))
export IDF_TOOLS_PATH=$dir
. $dir/esp-idf/export.sh
