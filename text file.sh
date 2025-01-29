#!/bin/bash

txt_files=$(ls *.txt 2>/dev/null)
c_files=$(ls *.c 2>/dev/null)

files_found=false

if [ -n "$txt_files" ]; then
    echo "Found .txt files:"
    echo "$txt_files"
    files_found=true
fi

if [ -n "$c_files" ]; then
    echo "Found .c files:"
    echo "$c_files"
    files_found=true
fi

if [ "$files_found" = false ]; then
    echo "No .txt or .c files found. Creating dummy files..."
    touch dummy1.txt dummy2.txt dummy1.c dummy2.c
    echo "dummy1.txt and dummy2.txt created."
    echo "dummy1.c and dummy2.c created."
else
    echo "No need to create dummy files."
fi
