#!/bin/bash

#if [[ $# -ne 1 ]];then
#	echo "Enter one parameter for $0 in digit"
#	exit
#fi
#if [ $(expr $1 % 2 ) -eq 0 ];then
#	echo "$1 is even number"
#else
#	echo "$1 is odd number"
#fi
[[ $# -ne 1 ]] && { echo "Enter one parameter for $0 in digit"; exit; }
[[ $(expr $1 % 2) -eq 0 ]] && echo "$1 is even number" || echo "$1 is odd number"


#if [[ $1 > $2 ]];then
#	echo "$1 is greater"
#fi
