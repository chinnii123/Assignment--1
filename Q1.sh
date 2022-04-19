#!/bin/bash
echo "1)Remove spaces "
echo "2)Remove duplicates"
echo "3)To exit the program"
echo "Enter the operation number "
while [ 1 ]
do
read num
case $num in
1 )
echo "Please enter file name: "
read file
#prints the data on terminal removing all the spaces
awk '{if(NF>0){print $0}}' $file ;;

#!/bin/bash
2 )
echo "Please enter the file name: "
read file
#prints the data removing duplicates
sort $file | uniq -u    ;;

3 ) 
echo "Bye!"
exit 0
;;
* )
echo "Error: Invalid option..."	
;;
esac
done