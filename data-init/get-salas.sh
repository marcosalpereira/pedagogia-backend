#!/bin/bash

getsala() {
    t=$1
    sala=$(curl -s "https://www.oinabn.com.br/unidade/uni_esctal.php?turma=$t" -H 'Host: www.oinabn.com.br' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8' -H 'Accept-Language: pt-BR,pt;q=0.7,en;q=0.3' --compressed -H 'Referer: https://www.oinabn.com.br/unidade/uni_esctur.php' -H 'Cookie: PHPSESSID=anrrqr7lmc5jel6rflc8kr0693; cooknomepais=BRASIL+NORTE; cookdfoto=..%2Ffotos%2F; cookddocm=..%2Fdocm%2F; cookserver=localhost; cookmatr=8269; cooknome=MARA+NUCIA+SILVEIRA+VITALINO; cooksu=0; cookemail=jgnalon%40hotmail.com; cooksiglaunidade=FOR; cooknomeunidade=FORTALEZA' -H 'Authorization: Basic bWVyY3VyaW86bWVyY3VyaW9AMTU=' -H 'Connection: keep-alive' -H 'Upgrade-Insecure-Requests: 1' | pup 'body > table:nth-child(6) > tbody:nth-child(1) > tr:nth-child(1) > td:nth-child(6) > strong:nth-child(1)' | grep -v strong)
    echo "$t $sala"
}

#for t in PITAGORAS2
for t in AMON1 AMON3 AMON5 APIS1 APIS4 APIS5 APIS6 APIS7 ENOCH2 PITAGÓRAS1 PITAGORAS2 PITAGORAS3 PITAGORAS6 PITAGORAS7 ROMULO1 SIDHARTA1 SIDHARTA2
do
  getsala $t
done

