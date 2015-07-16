#!/bin/bash

longi="$4"
lat="$3"


ls *.txt | xargs cut -d';' -f1-5 |tr ';' ' ' | xargs -I {} echo {} $longi $lat | \
while read nome argumentos;do
  ret=$(eval ./verifyCoordenate $argumentos);
  if [ "$ret" = 1 ]; then
    echo "$1;$2;$3;$4;$5;$6;$7;$8" >> $nome ;
    break;
  fi ;
done
