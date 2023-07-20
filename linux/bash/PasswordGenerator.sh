#!/bin/bash

echo "This is a simple Password Generator"
echo "Enter the lenght of Password You need:"
read pass_lenght

for i in $(seq 1);
do
    echo "Here is your Password:"
    openssl rand -base64 48 | cut -c1-$pass_lenght
    
done
