
string="my name is rakesh"

length=${#string}

echo "The string length is $length"

echo "String converted into upper case is ${string^^}"

echo "String converted into Lower case is ${string,,}"

echo "Repalce Rakesh with Rahul. new string is ${string/Rakesh/Rahul}"

echo "${string:6:11}"

