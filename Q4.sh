#!/bin/bash
clear
echo "Please enter number with commas between them :"
read string 
#remvoes commas between them and stores in a new array                  # avoid globbing (expansion of *).
arr=(${string//,/ })
#number of elements in the array
n=${#arr[@]}
#loop runs n times
for((i=1;i<n;i++))
do
    j=$i-1
    #array to store the number while comparison
    temp=${arr[$i]}
    #checking the present element greater then zero and before stored elemnt
    while((j>=0 && arr[j]>temp))
    do
        #if loop condition satidifies then stores the smaller number into arr[j+1]
        arr[$j+1]=${arr[$j]}
        j=$j-1
    done
    #if while condition not equals then present element is smallest element than the after element
    arr[j+1]=$temp
done
#printing sorted array
echo "sorted array"
for((i=0;i<n;i++))
do
    echo ${arr[$i]}
done