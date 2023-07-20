#!/bin/bash

x=1

while [[ x -e 10 ]]
do
	echo "$x"
	(( x++ ))
done
