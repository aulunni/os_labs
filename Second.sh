#!/bin/bash

printf "Сколько студентов? \n"
read number
if [ $number -eq 0 ]
then
    printf "Нет студентов :("
elif [ $number -ge 5 ]
then
    printf "Оооооочень много студентов"
else
    printf "$number студентов"
fi