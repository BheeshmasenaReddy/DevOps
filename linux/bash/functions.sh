#!/bin/bash

function Hello(){
    echo "Hello from hello function"
    local name=$1
    echo "$name"
}

function Quit(){
	echo "Terminating Program"
    	exit
}


Hello Surya
Hello Bheeshma
Hello Raj
Quit
