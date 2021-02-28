#!/bin/bash

# Generate GET requests targeting the desired URL to trigger HITS counter

NUM=$1
URL=$2

for (( i=1; i<=$NUM; i++ )); do
	wget $URL -O /dev/null -q
	W=$((($COLUMNS*$i)/$NUM))
	echo -ne '\r'
	printf "#%.0s" {1..$(seq 1 $W)}
done

echo -ne '\n'
