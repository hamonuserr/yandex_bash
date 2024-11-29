#!/bin/bash

path='./input.txt'

sort_method=$(tail -n 1 $path)

if [ "$sort_method" = 'date' ]; then
	sed -i '1d; $d' "$path" 
	LC_ALL=C sort -nk5 -nk4 -nk3 $path | awk '{print $1" "$2" "$3"."$4"."$5}' > ./output.txt
	echo "Sorted successfully by date!"
elif [ "$sort_method" = 'name' ]; then
	sed -i '1d; $d' "$path" 
	LC_ALL=C sort -k2 -k1 $path | awk '{print $1" "$2" "$3"."$4"."$5}' > ./output.txt
	echo "Sorted successfully by name!"
fi
