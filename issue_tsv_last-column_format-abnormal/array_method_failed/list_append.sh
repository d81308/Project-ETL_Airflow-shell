#!/bin/bash

# list maker
list=()
str=""

list+=( "1" )
list+=( "2" )

echo "${list[@]},"

# csv like
for ((i=0;i<=1;i++))
do
	str="$str\n${list[$i]}"
	echo $str
done

echo -e "$str"