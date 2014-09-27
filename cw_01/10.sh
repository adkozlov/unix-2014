#!/bin/bash
if [[ $# -ne 3 ]]
then
	echo "usage: <dd> <mm> <yyyy> -- date"
	exit 1
fi

result=1
day=`echo $1 | sed -E -e "s/^0//"`

for i in `cal $2 $3 | grep -E -e "\b${day}\b" | tr ' ' '\n' | grep -E -e '^.+$'`
do
    if [[ $i == $day ]]
    then
	case $result in
		1) echo Monday ;;
		2) echo Tuesday ;;
		3) echo Wednesday ;;
		4) echo Thursday ;;
		5) echo	Friday ;;
		6) echo Saturday ;;
		7) echo Sunday ;;
		*) exit 1
	esac
    fi

    result=$((result + 1))
done