#!/bin/bash

while echo "Ваше имя:" 
do
    read name
    if [[ -z $name ]]
    then
      break
    fi
    echo "Ваш Возраст:" 
    read age
if [ "$age" -lt "16" ]
then
echo child
fi

if (( "$age" >= "17" )) && [ "$age" -lt "25" ]
then
echo youth
fi

if (( "$age" > "25" ))
then
echo adult
fi

done
echo "byyyyyyyyyyye"