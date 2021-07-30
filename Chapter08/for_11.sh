#!/bin/bash
for FILE in $(ls *.mp3)
do
	if [ -e ./MP3/$FILE ] 

	then
	echo "The file $FILE exists."
	continue
	fi
mv $FILE ./MP3
done
