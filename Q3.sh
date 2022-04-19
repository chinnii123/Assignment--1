#!/bin/bash
clear
echo "Enter file name to know the size of the file: " 
read  filename
#calculates the size of the file in bytes
size=$(stat --format=%s "$filename")
#prints the file size
echo "Size of the $filename file  is $size bytes "

#prints the total nuber of lines in the file
echo "Total number of lines in $filename file is $count"
count= wc --lines <$filename

#prints the total number of words
echo "Total Number of words in a $filename file is: "
wc --word <$filename

#prints total number of words in each line and corressponding line number
echo "NUmber of words in each line in $filename"
awk '{print "Line Number:  " "<" NR "> "  "  - Count of Words : " "[" NF "]" }' $filename

#prints repeated word and their count
echo "Repeated words and their count"

awk '{for(i = 1;i <= NF; i++) {a[$i]++}} END {for (k in a) if(a[k] > 1) {print "word : < " k " > - Count of repetition : ["  a[k] "]"}}' $filename