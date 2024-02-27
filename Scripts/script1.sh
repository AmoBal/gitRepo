#!/bin/bash

if [[ -f "$1" ]] && [[ -r "$1" ]] || [[ -d "$1" ]];then
	echo "$1 is a readable file or directory"
else
	echo "$1 is neither a file, non-readable file nor directory"
fi
