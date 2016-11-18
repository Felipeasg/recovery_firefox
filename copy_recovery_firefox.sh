#!/bin/bash

foldername=`date '+%d-%m-%y'`
mozillastr=`ls ~/.mozilla/firefox | grep default`


if [ -d "$foldername" ]; then

	listOfFolderWithSimilarNameDate=(`ls | grep 07-10-16`)
	
	lengthOfArray=${#listOfFolderWithSimilarNameDate[@]}

	
#	echo "The last: $lengthOfArray"

	mkdir $foldername.$lengthOfArray

	cp ~/.mozilla/firefox/$mozillastr/sessionstore-backups/* ./$foldername.$lengthOfArray
	
else

	mkdir $foldername
	cp ~/.mozilla/firefox/$mozillastr/sessionstore-backups/* ./$foldername

fi



