#!/bin/bash

string="Bigdate process framework is hadoop,hadoop is an open source project"

function print_tips
{
	echo "***********************************************"
	echo "*     (1) 打印string长度                      *"
	echo "*     (2) 删除字符串中所有的hadoop            *"
	echo "*     (3) 替换第一个hadoop为mapreduce         *"
	echo "*     (4) 替换全部hadoop为mapreduce           *"
	echo "***********************************************"
}


function len_of_string
{
	echo "${#string}"
}


function del_hadoop
{
	echo "${string//hadoop/}"
}

function req_hadoop_mapreduce_first
{
	echo "${string/hadoop/mapreduce}"
}

function req_hadoop_mapreduce_all
{
	echo "${string//hadoop/mapreducd}"
}


while true
do 
	echo "string=$string"
	echo
	print_tips
	read -p "ples input your choice(1|2|3|4|q|Q): " choice
	
	case $choice in
		1)
			clear
			len_of_string
			;;

		2)
			clear
			del_hadoop
			;;

		3)
			clear
			req_hadoop_mapreduce_first
			;;
		4)
			clear
			req_hadoop_mapreduce_all
			;;
		q|Q)
			exit
			;;

		*)
			echo "ERRO,input only in (1,2,3,4,q,Q)"
			;;
	esac
done

