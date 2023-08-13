#!/bin/bash

#single line comment example

#echo "Hello Anil! How are you?"

echo "good"

<<com
echo"This doesn't echo"

echo"Even this doesn't"
com
echo "OK, this is echoing after <<com !"
