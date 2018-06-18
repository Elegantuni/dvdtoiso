#!/usr/bin/env bash

arguments=$#

if [ $arguments -lt 2 ] || [ $arguments -gt 2 ];
then
	echo "isomake.bash <disk> <file>"

	exit 1
fi

disk=$1
isoname=$2

logicalblock=`isoinfo -d -i $disk | grep -i -E 'block size' | gawk -F":" '{print $2}'`
volumesize=`isoinfo -d -i $disk | grep -i -E 'volume size' | gawk -F":" '{print $2}'`

echo "Executing dd"
dd if=$disk of=$isoname bs=`echo $logicalblock` count=`echo $volumesize` 2> /dev/null

echo "Executing md5sum"
echo `md5sum $isoname | gawk '{print $1}'` > $HOME/.faketest1
echo `md5sum $disk | gawk '{print $1}'` > $HOME/.faketest2

echo "Checking md5sum results"
result1=`diff $HOME/.faketest1 $HOME/.faketest2`

rm $HOME/.faketest1
rm $HOME/.faketest2

case $result1 in
(*[![:blank:]]*) echo 'The iso creation failed';;
(*) echo 'The iso creation was successful'
esac
