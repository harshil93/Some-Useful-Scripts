#!/bin/bash
FILES=/media/Linux_Ext/vids/*
for f in $FILES
do
	# echo ${f%%.*}.aac
	
	input=$(printf "%q" "$f") ;
	output=${f%*.[a-z]*};
	output=$(printf "%q" "$output").aac;
	# echo $output
	torun=ffmpeg\ -i\ $input\ -vn\ -acodec\ copy\ $output ;
	eval $torun
	
done

