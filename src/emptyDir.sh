#!/bin/bash

# If no arg
if [ $# -eq 0 ]
then
  for i in `find . -iname *.txt`
  do
    rm -f $i
  done
fi


for i in `find . -iname *.xml`
do
  rm -f $i
done

