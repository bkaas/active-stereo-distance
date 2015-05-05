#!/bin/bash

rm results.txt

file1="$1hey_1.jpg"
file2="$1hey_2.jpg"

COUNTER=1
while [ $COUNTER -lt 51  ];
do

	fswebcam -c ~/.fswebcam.conf ${file1/hey/$COUNTER}
	fswebcam -c ~/.fswebcam2.conf ${file2/hey/$COUNTER}
	
	python process.py ${file1/hey/$COUNTER} ${file2/hey/$COUNTER}
	
	sudo python stepper.py

	let COUNTER=COUNTER+1
done

