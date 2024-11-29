#!/bin/bash

x=$(head -n 1 ./input.txt)
sed -i '1d' ./input.txt

MOD=1000000007

sum=0
power=1

while read a; do
	sum=$(((sum + a * power)%MOD))
	power=$(((power*x) % MOD))
done < ./input.txt

echo $sum > ./output.txt
