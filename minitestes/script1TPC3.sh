#!/bin/bash
X="ls -l"
Y=123
Y1=${Y}+$Y
Y2=$(($Y+$Y))

for k in $X; do
	echo -n "$k "
done

echo "Y1=$Y1, Y2=$Y2"
