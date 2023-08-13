#!/bin/bash


#key value pair array

declare -A myarray

myarray=( [name]=anil [age]=25 [city]=patna )

echo "name is ${myarray[name]}"


echo "Age is ${myarray[age]} and City is ${myarray[city]}"


