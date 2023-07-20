#!/bin/bash

#Arithmatic Opearations

a=10
b=6

echo "Sum of $a and $b is $(( $a+$b ))"
echo "Subtraction of $a and $b is $(( $a-$b ))"
echo "Multiplication of $a and $b is $(( $a*$b ))"
echo "Division of $a and $b is $(( $a/$b ))"
echo "Modulus of $a and $b is $(( $a%$b ))" #gives remainder

#Logical operators

a=true  #play around with these values
b=false

if [[ $a||$b ]];then
	echo "atleat one condition is true"
fi
if [[ $a&&$b ]];then
	echo "atleast one condition is false"
fi
if [[ $a && !$b ]]; then
	echo "both conditions are true"
fi
