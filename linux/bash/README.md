# Bash Scripting
A Bash script is a simple text file containing multiple Linux commands. The extension of the bash script is ".sh". So to create a bash script file, add the ".sh" extension at the end.
## Writing a simple bash script.
```
#!/bin/bash
echo "Hello from Bash Script"
```
The first line of the script is called "shebang". It is to tell the system which interpreter to use to run the script. It is shebang for bash and varies from language to language.
To run the bash script first you need to make it executable. To make the script executable follow below steps:
1. In terminal navigate to the directory in which you created the file.
2. Type `chmod +x <name of file>`. Example : `chmod +x hello.sh`.
Now the file has permissions to execute and it is executable. To run the file type `./<file name>`. Example : `./hello.sh`
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
To pass the argument to the above script type: `./filename.sh Apples`



