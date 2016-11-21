#!/bin/bash

foldername=`date '+%d-%m-%y'`
mozillastr=`ls ~/.mozilla/firefox | grep default`


if [ -d "$foldername" ]; then

	listOfFolderWithSimilarNameDate=(`ls | grep $foldername`)
	
	lengthOfArray=${#listOfFolderWithSimilarNameDate[@]}

	
#	echo "The last: $lengthOfArray"

    
    echo "Creating directory $foldername.$lengthOfArray"
	mkdir $foldername.$lengthOfArray

	cp ~/.mozilla/firefox/$mozillastr/sessionstore-backups/* ./$foldername.$lengthOfArray
	
else

    echo "Creating directory $foldername"
	mkdir $foldername
	cp ~/.mozilla/firefox/$mozillastr/sessionstore-backups/* ./$foldername

fi



