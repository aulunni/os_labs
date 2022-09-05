#!/bin/bash
gcd () {
m=$1
n=$2
while ((m-n))
do
    if [ $m -gt $n ]
    then
        ((m-=n))
    else
        ((n-=m))
    fi
done
echo "Наибольший общий делитель $m"
}

read m n
while ((m+n))
do
    gcd $m $n
    read m n
read bye
if ["$bye" -eq ""]
then
echo "bye"
fi
done