#!/bin/bash

i=0

until [ $i -ge 10 ];
do
	echo "This condition is false $i"
	i=$(( $i+1 ))
done
