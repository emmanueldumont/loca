#!/bin/bash

# Find for all files the corresponding maximum number of sources
for ((i=10; i>=0; i--))
do
  
  printf "\nid=\"$i\"\n"
  grep -ri -m 1 id=\"$i |grep k1

done
