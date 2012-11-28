#!/bin/sh
perl -n -a -e '$n=hex($_);$v=$n>>7;$n=$n&0x7f; printf "%s%s%s%s%s %02x %02x\n", $n&1?"-":"W",$n&2?"A":"-",$n&4?"C":"-",$n&16?"-":"R","-",$n, $v;' $1 | egrep 'W|R'
