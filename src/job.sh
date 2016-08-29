#!/bin/bash

maxiS1=('2' '0' '0')
maxiS2=('1' '0' '0')
maxiS3=('1' '3' '2')
maxi=0

for j in `seq 1 3` ; do
  for k in `seq 1 3` ; do
    echo $j $k
    if [ $j = '1' ]
    then
      maxi=${maxiS1[$k-1]}
    elif [ $j = '2' ]
    then
      maxi=${maxiS2[$k-1]}
    else
      maxi=${maxiS3[$k-1]}
    fi
    echo $maxi
    for l in `seq 1 2` ; do

      cd /home/dumont/workspace/loca/s300_src1/scenar$j/prise$k/

      ## keep only lines with frame or id="X"
      sed '/frame\|id/!d' k$l.xml > basek$l.xml

      for i in `seq 0 $maxi` ; do

        ## keep id=X
        sed "/frame\|\"${i}\"/!d" basek$l.xml > temp

        ## remove \t
        sed ':a;N;$!ba;s/\n\t\t//g' temp > temp2

        ## remove text
        sed 's/<position\|<positions\|frame=\|\"\|coordinate\|\|=\|cartesian\|>\|x=\|y=\|z=\|\/>\|id=.//g' temp2 > temp
        sed ':a;N;$!ba;s/\t //g' temp > temp2
        sed 's/,/./g' temp2 >temp
        sed '/  /!d' temp > temp2
        sed 's/  / /g' temp2 > "idk${l}_${i}.txt"

        rm temp temp2

      done
    done
  done
done
