#!/bin/bash

sum=0
for (( i=0;i<=100;i++  ))
do

A=`shuf -n1 -i 1-6`
B=`shuf -n1 -i 1-6`
C=`expr $A + $B`

	if [ $A -eq 6 ] || [ $B -eq 6 ] || [ $C -eq 12 ] || [ $C -eq 6 ]
	then
		sum=`expr $sum + 1`
	fi
done
	echo "出现六的概率：$sum%"
