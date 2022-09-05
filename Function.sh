#!/bin/bash

exec 2>myerror
re='^[0-9]+$'
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
if ! [[ $m =~ $re ]] ; then
   echo "error: Not a number" >&2; exit 1
fi
if ! [[ $n =~ $re ]] ; then
   echo "error: Not a number" >&2; exit 1
fi
while ((m+n))
do
    gcd $m $n
    read m n

if [$m -eq ""]
then
echo "bye"
fi
done
