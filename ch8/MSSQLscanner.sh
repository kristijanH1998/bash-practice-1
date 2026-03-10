#! /bin/bash

nmap -sT 10.0.2.15/24 -p 1433 >/dev/null -oG MSSQLscan
cat MSSQLscan | grep open > MSSQLscan2
cat MSSQLscan2
