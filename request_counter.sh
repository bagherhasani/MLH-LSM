#!/bin/bash
: ' get the column 9 which is the status code, sort them , count how many times appeard , show status code first then amount it appeard

'
awk '{print $9}' apache_access | sort | uniq -c | awk '{print $2,$1}' 
