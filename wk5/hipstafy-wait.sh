#!/bin/bash

directory="/home/payel/Desktop/hipstafy-dropbox"   # or whatever you are interested in

inotifywait $directory -m | while read path action filename; do
	if [ "$action" == "MOVED_TO" ]  ; then
	      isImage=`file $path/$filename | grep image`
	      if [ -n "$isImage" ]; then
		./hipstafy.sh $path
                echo "Check the subdirectory for generated hipstafy file"
	      else
		echo "Not an image file."
	      fi
	      
	fi

        #file $path/$filename | grep image
	#echo $isImage
done 
