# Bash Scripting
A Bash script is a simple text file containing multiple Linux commands. The extension of the bash script is ".sh". So to create a bash script file, add the ".sh" extension at the end.
## Writing a simple bash script
```
#!/bin/bash
echo "Hello from Bash Script"
```
The first line of the script is called "shebang". It is to tell the system which interpreter to use to run the script. It is shebang for bash and varies from language to language.
To run the bash script, you first need to make it executable. To make the script executable, follow the below steps:
1. In the terminal, navigate to the directory in which you created the file.
2. Type `chmod +x <name of file>`. Example: `chmod +x hello.sh`.
Now the file has permission to execute, and it is executable. To run the file type `./<file name>`. Example : `./hello.sh`
After running the script you can see output as "Hello from Bash Script"
"echo" is the command used to print the string to the terminal.

### Variables in bash
To create variables in bash `var= "Apples" ` and to reference it again in the script we use "$" sign.
```
#!/bin/bash
var = "Apples"
echo "I brought $var for you"
```
### Read user input
Instead of hardcoding the variables in the script, you can prompt for the user input and assign it to a variable.

```
#!/bin/bash
echo "Enter Your Name: "
read name
echo "Enter Your Age: "
read age
echo "Hi, $name your age is $age"
```
Here it asks for the name in the terminal and the entered input is stored in the name variable. Similarly for age.

### Passing Arguments to the Script
You can pass arguments to the script in the command line. To pass arguments to the script type argument along with `./<file_name.sh>`.
```
#!/bin/bash
arg=$1
echo "The entered argument is $arg"
```
To pass the argument to the above script, type: `./filename.sh Apples`

### If-Else in Bash
The if-else statements help you to run a block of code based on the conditions given true/false.
The if, else-if, else in bash have a structure like following.
```
#!/bin/bash

echo "Enter your username:"
read user

if [ $user == "root" ];then
        echo "Access Granted"
elif [ $user == "admin" ]; then
        echo "Access Granted with limited privileges"
else
        echo "Access Denied"
fi
```
The "fi" is to indicate the end of the if block.

### Operators in Bash
#### Arithmetic operators
You can perform basic arithmetic operations in bash like addition (+), subtraction (-), multiplication (*), division (/), and modulus (%). To specify that it a arithmetic operation, enclose the expression in double brackets (( <expression> )).

#### Logical Operators
There are two main logical operators, `logical AND` , `logical OR`. These are logical operators because they deal with boolean expressions, i.e., true or false. 
For the AND operator, the result will be true only `if all conditions are true` otherwise false.
For the OR operator, the result will be true even `if one of the conditions is true`.

```
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
```
Note the exclaimation mark signifies not operator. It simply inverts the result.

### Loops in Bash
Loop are used to repeat an operation or command.
#### for loop
for loops repeat an action for a specified times.
```
!#/bin/bash

for (( i=0;i<=10;i++ ));
do
      echo "$i"
done
```
#### while loop
while loop is used when a comand is to be executed while a certain conditon remain true.
```
#!/bin/bash

i=0

while [ $i -le 10 ]
do
        echo "$i"
        i=$(( $i + 1 ))
done
```

#### until loop
until loop repeats the block of code until a condtion becomes true. That is opposite of while loop.
```
#!/bin/bash

i=0

until [ $i -ge 10 ];
do
        echo "This condition is false $i"
        i=$(( $i+1 ))
done
```
### break and continue in loops
break - stops the execution of loop and brings the curson out of loop
continue - skips the excution for the current iteration and continues next iteration
```
#!/bin/bash

for i in $(seq 10);
do
        if [ $i == 5 ]; then
                continue
        elif [ $i == 8 ]; then
                break
        else
                echo "$i"
        fi
done

```

### functions in bash
Functions are used to abstract out a piece of code and make it re-usable just by calling out function.
```
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
```

Hope yoy got basic idea about writing a bash script.
Here are some references you can learn from.

## References
- [Shell Scripting for Beginners](https://youtube.com/playlist?list=PLS1QulWo1RIYmaxcEqw5JhK3b-6rgdWO_)
- [Bash for beginners](https://youtube.com/playlist?list=PLIhvC56v63IKioClkSNDjW7iz-6TFvLwS)







