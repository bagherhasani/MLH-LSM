#!/bin/bash

# pick the  last column of apache_access which is the byte size and print but before that - sort big to small - remove duplicate - s#show only top 5 


awk '{print $NF}' apache_access | sort -nr | uniq | head -5




