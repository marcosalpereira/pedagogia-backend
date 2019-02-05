#!/bin/bash

input=$1
tema=$2
nivel=$3

output=$input.json
> $output
echo "{\"nome\": \"$tema\",\"nivel\": { \"id\": $nivel },\"temas\": [" > $output

sed -r \
 -e 's/ +$//g' \
 -e 's/"/\\"/g' \
 -e '/^$/d' \
 -e '/^[Tt][Ee][Mm][Aa]/! s/(.+)/\{"nome": "\1" \},/gi' \
 -e '/^[Tt][Ee][Mm][Aa]/  s/(.+)/\]\},\{"nome": "\1","capitulos": \[/gi' \
 $input >> $output

echo "]}]}" >> $output

sed -i \
 -e 's/},]}]}/}]}]}/' \
 -e '0,/]},/ s/]},//' \
 $output

awk -i inplace -v RS="\0" -v ORS="" '{gsub(/\},\n\]\}/,"}\n]}")}7' $output
