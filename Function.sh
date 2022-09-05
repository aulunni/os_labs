#!/bin/bash

re='^[0-9]+$'
gcd () {
m=$1
n=$2



while ((m-n))
do
    if ! [[ $m =~ $re ]] ; then
    echo "error: Not a number" ; exit 1
    fi
    if ! [[ $n =~ $re ]] ; then
    echo "error: Not a number" ; exit 1
    fi
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
if ! [[ $m =~ $re ]] ; then
   echo "Ошибка! У вас где-то не число" >&2; exit 1
fi
if ! [[ $n =~ $re ]] ; then
   echo "Ошибка! У вас где-то не число" >&2; exit 1
fi
if [ -z $m ]
then
echo "bye"
fi
done
