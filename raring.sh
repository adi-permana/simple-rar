#!/bin/bash

echo "What rar job do you want to do ?"
echo "Read rar content - 1"
echo "Compress into rar - 2"
echo "Uncompress rar file - 3"
read OPTION

if [ $OPTION -eq 1  ] || [ $OPTION -eq 2 ]
then
	echo "Name the file & location"
	read RARFILE
	if [ $OPTION -eq 1 ]
	then
		echo
		echo "Listing inside $RARFILE file:"
		echo
		unrar l "$RARFILE"
	else
		echo
		echo "Uncompressed file destination:"
		read UNRARDEST
		echo "Uncompressing $RARFILE:"
		unrar e "$RARFILE" "$UNRARDEST"
	fi
else 
	echo "File to compress:"
	read TORAR
	echo "Name the rar file:"
	read RARNAME
	rar a "$RARNAME" "$TORAR"
fi

