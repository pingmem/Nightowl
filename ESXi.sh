#!/bin/bash

count=24
list=$(seq -w $count)

for i in $list
do
	source ./ES-$i.sh
	ES_$i >> ES-$i.txt
done

rm -rf result.txt check.txt action.txt division.txt

