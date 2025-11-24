#! /usr/bin/bash

url="https://proof.ovh.net/files/1Mb.dat"
# curl ${url} > curlfile.txt
# curl ${url} -O
# curl ${url} -o NewFileDw
# curl {$url} > outputfile
curl -I ${url}          # shows information about the file

