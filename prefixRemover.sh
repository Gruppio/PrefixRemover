#!/bin/bash

if [ $# == 0 ]
then
	echo ""
	echo "Prefix Remover:"
	echo "Remove the given prefix(if present) from all the files in the current path and add the specified one."
	echo "usage: $0 prefixToRemove prefixToAdd"
	echo ""
	exit 1
fi

prefixToRemove=$1
prefixToAdd=""

if [ $# == 2 ]
then
	prefixToAdd=$2
fi

for f in *
do
	fileWithoutPrefix=${f#$prefixToRemove}
	newFileName="$prefixToAdd$fileWithoutPrefix"
	echo "Renaming $f in $newFileName"
	mv $f $newFileName
done

exit 0

