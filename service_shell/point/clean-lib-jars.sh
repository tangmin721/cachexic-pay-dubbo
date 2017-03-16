#!/bin/sh

current_dir=$(cd `dirname $0`; pwd)

echo "=== current_dir is:$current_dir"

echo "=== clean $current_dir/lib/*.jar"

rm -rf $current_dir/lib/*.jar

