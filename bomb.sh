#!/bin/bash



what="$1"

if [ -z "$what" ]; then
	find . -delete
elif [ -d "$what" ]; then
	find "$what" -delete
elif [ -f "$what" ]; then
	find "$what" -delete	
else
	echo "bomb: $what is neither a file, nor a dir. I'm doing no shit!"
fi

