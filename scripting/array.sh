#!/bin/bash

myarray=(1 2 58 69 "Anil" 'a' "rahul is good")

echo "${myarray[*]}"

echo "${myarray[0]}"

echo "${myarray[2]}"



#how to get length of an array
  echo "${#myarray[*]}"





#How to use slicing in shell scripting

echo "${myarray[*]:1}"

echo "${myarray[*]:6}"


echo "${myarray[*]:2:2}"



#updation in an array

myarray+=("good" 589 'TO' 8.9)

echo "${myarray[*]}"



