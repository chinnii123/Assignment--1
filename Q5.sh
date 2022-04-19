#!/bin/bash
clear
echo "1)String Reverse"
echo "2)String reverse with subsequent letter"
echo "3)Half string reverse and half with same string"
echo "4)To Stp"
echo "Enter a number to perform the above operations: "
while [ 1 ]
do
read num
case $num in
1 )
echo "Enter a string to reverse : "
#reads the string
read s
#calculates the length of the string
strl=`echo ${#s}`
#while loop runs untill the length become zero
while [ $strl -ne 0 ]
do
#command ro store the final element
        reversed=$reversed`echo $s | cut -c $strl`
        ((strl--))
done
echo "Reversed string"
echo $reversed ;;
2 )
echo "Enter a string to get a reversed output with subsequent string : "
#reads the string
read str
#calculates the length of the string
strlength=`echo ${#str}`
#while loop runs untill the length become zero
while [ $strlength -ne 0 ]
do
#command ro store the final element
        reversed_str=$reversed_str`echo $str | cut -c $strlength`
        ((strlength--))
done
#store sthe next character of the reversed string into a new array
char=$(echo "$reversed_str" | tr "0-9a-zA-Z" "1-9a-zA-Z_")
echo "Reverse output with subsequent letter"
echo $char;;

3 )
echo "Enter a string to get half reverse and half as usual: "
read string
str=`echo ${#string}`
let strlen=$str/2
#reverseing the first half part if the string
while [ $strlen -ne 0 ]
do
        reversed_string=$reversed_string`echo $string | cut -c $strlen`
        ((strlen--))
done
#storing the second half into an new array
for((i=$str/2 ; i<$str;i++))
do 
        reversed_string=$reversed_string${string:$i:1}
done
#prints the final string
echo $reversed_string;;
4 ) 
echo "Bye!"
exit 0
;;
*)
echo "Error: Invalid option..."	
;;
esac
done