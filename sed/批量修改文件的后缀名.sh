#!/bin/bash

if [ $# -ne 2 ];then #判断用户的输入
	echo "Usage:$0+old-file new-file"
	exit
fi

for i in *$1* #对包含用户给定的参数文件进行遍历
do 
	if [ -f $i ];then
		echo $i
		iname=`basename $i` #获取文件名
		newname=`echo $iname | sed -e "s/$1/$2/g"`  #对文件名进行替换并赋值给新的变量
		mv $iname $newname
	fi
done

exit
