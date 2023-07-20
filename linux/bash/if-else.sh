#!/bin/bash

echo "Enter your username:"
read user

if [ $user == "root" ];then
	echo "Access Granted"
elif [ $user == "admin" ]; then
	echo "Access Granted with limited privilages"
else
	echo "Access Denied"
fi
