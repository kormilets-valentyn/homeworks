#!/bin/bash
curl -o harry.txt https://en.wikipedia.org/wiki/Harry_Potter
VAR0=`echo 'Harry: '`
VAR1=`grep -o 'Harry' harry.txt|wc -l`
VAR2=`grep -n 'Harry' harry.txt|cut -d: -f1|paste -s -d ' '|sed -e 's/ /, /g'`
echo "$VAR0$VAR1 [$VAR2]" >result.txt
VAR3=`echo 'Lord: '`
VAR4=`grep -o 'Lord' harry.txt|wc -l`
VAR5=`grep -n 'Lord' harry.txt|cut -d: -f1|paste -s -d ' '|sed -e 's/ /, /g'`
echo "$VAR3$VAR4 [$VAR5]">>result.txt
VAR6=`echo 'Hogwarts: '`
VAR7=`grep -o 'Hogwarts' harry.txt|wc -l`
VAR8=`grep -n 'Hogwarts' harry.txt|cut -d: -f1|paste -s -d ' '|sed -e 's/,/, /g'`
echo "$VAR6$VAR7 [$VAR8]">>result.txt

