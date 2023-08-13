#!/bin/bash
#$Revision:001$
#$Sun Aug 13 02:06:26 UTC 2023$

#variables
BASE=/home/ubuntu/shellscript/project/archive/files

DAYS=10
DEPTH=1
RUN=0

#check if directory present or not
if [ ! -d $BASE ]
then
        echo "Directory does not Exit:$BASE"
        exit 1
fi
#Create 'archive' folder if not present
if [ ! -d $BASE/archive ]
then
        mkdir $BASE/archive
fi
echo "run upto here"
#Find the list of files larger than 1MB and archive it
for i in `find $BASE -maxdepth $DEPTH -type f -size 0M`
do
        echo "Hey Buddyy"
        if [ $RUN -eq 0 ]
        then
                echo "[ $(date "+%y-%m-%d %H:%M:%S") ] archiving $i ==>$BASE/archive"
                gzip $i || exit 1
                mv $i.gz $BASE/archive || exit 1
        fi
done
