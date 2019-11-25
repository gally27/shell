#!/bin/bash

if [ ! -f $1 ];then   #判断参数是否为文件且存在
	echo "$0 is not a file"
	exit
fi

sed -i "/^$/d" $1
