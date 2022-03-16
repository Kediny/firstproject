#!/bin/bash
i=0
while [ $i -lt 10 ]; do
	if [ $(( i%2)) -ne 0 ]; then
		echo $i
	fi
	i=$(( i+1 ))
done
