#!/bin/bash
# Purpose: Read Comma Separated CSV File
# Author: Vivek Gite under GPL v2.0+
# ------------------------------------------
echo "Qual é o arquivo que voce quer parsear ? "
read FILE_PATH
INPUT=$FILE_PATH
if [ ! -f $INPUT ] 
    then 
    echo "$INPUT file not found"
    exit 99 
fi
echo "Qual é o separador do csv? "
read separator
IFS="$separator"
while read name date phone isUgly
do
	echo "Nome : $name"
	echo "Data : $date"
	echo "Phone : $phone"
	echo "IsUgly : $isUgly"
done < $INPUT
