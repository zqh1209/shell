#!/usr/bin/bash
back_dir=/var/test_back

#if ! test -d $back_dir; then
if [ ! -d $back_dir ]; then
    mkdir -p $back_dir
fi

echo "Start..."
