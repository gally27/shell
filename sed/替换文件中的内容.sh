#!/bin/bash

echo $#

if [ $# -ne 3 ];then
	echo "Usage:$0 old-part new-part filename"
	exit
fi

sed -u "s#$1#$2#" $3


