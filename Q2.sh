#!/bin/bash
#reads line by line 
clear
while read line;
do
#loop runs untill the end of the file
if [[ ! -z $line ]]
then
      # removes ~ this symbol and converts into a new line without ~
        #arr=(${line//"~"/  })
        # stores the info after dot (delimiter)
        arr_1=($( echo "${line[@]}" | cut --complement -d "~" -f1 ))
        #stores the info before dot
        arr_2=($( echo "${line[@]}"| cut -d "~" -f1 ))
        #prints the data
        echo "["${arr_1[@]}"] once said," "[\""${arr_2[@]}""\"]"" >>speech.txt
fi
done <$1
