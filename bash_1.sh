#!/bin/bash

num_w=`wc -w < ./input.txt`

num_li=`wc -l < ./input.txt`

num_le=`grep -o -i '[A-Za-z]' ./input.txt | wc -l`

echo -e "Input file contains:\n$num_le letters\n$num_w words\n$num_li lines" > output.txt
