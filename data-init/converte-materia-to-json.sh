#!/bin/bash

input=$1
tema=$2
nivel=$3

output=$input.http

#Normalizar arquivo
sed -r \
 -e 's/^\d\.//g' \
 -e 's/^\x27//g' \
 -e 's/\x27$//g' \
 -e 's/^"//g' \
 -e 's/\"$//g' \
 -e 's/"/\\"/g' \
 -e '/^ *$/d' \
 -e 's/^ *//g' \
 -e 's/^- *//g' \
 -e 's/^ *[0-9]+. * *//g' \
 -e '/^materia |^[Tt][Ee][Mm][Aa] /! s/(.+)/chap \1/g' \
 -e '/^[Tt][Ee][Mm][Aa] / s/tema (.+)/tema \1/gi' \
  "$input" > "$output"

# transformr em json
sed -i -r \
 -e '/^materia / s/^materia ([1-9]) (.+)/{\"nome\": \"\2\",\"nivel\": { \"id\": \1 },\"temas\": [/g' \
 -e '/^chap / s/chap (.+)/\{"nome": "\1" \},/gi' \
 -e '/^tema / s/tema (.+)/\]\},\{"nome": "Tema \1","capitulos": \[/gi' \
 "$output"

echo "]}]}" >> "$output"

# remover caracteres json extra
sed -i \
 -e 's/},]}]}/}]}]}/' \
 -e '0,/]},/ s/]},//' \
 "$output"

awk -i inplace -v RS="\0" -v ORS="" '{gsub(/\},\n\]\}/,"}\n]}")}7' "$output"

echo "POST  https://nafortaleza.com.br:8443/pedagogia/api/materias" > 1
echo "Content-Type: application/json" >> 1
echo "Authorization: Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ1c2VyQG5hLmNvbS5iciIsImV4cCI6MTU0OTQ2ODEwNSwiUk9MRVMiOiJST0xFX1VTRVIifQ.DHLlUv0HlPbmczHv7da8NWwdPzEXixw-1garQBNRa1oVkBjAHfrEGhmpp4P0hjSBZoAjyM5cpOv-B_e6mqueAQ" >> 1
echo "" >> 1
cat 1 "$output" > 2
mv 2 "$output"
rm 1
