#! /bin/bash
# This script is designed to find hosts with MySQL installed
nmap -sT 127.0.0.1/24 -p 3306 >/dev/null -oG MySQLscan
cat MySQLscan | grep open > MySQLscan2
cat MySQLscan2