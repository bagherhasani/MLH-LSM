#!/bin/bash

# in order we say: 
# go to column one from apache_access which is ips -> sort them -> remove duplicate > count lines (amount)

awk '{print $1}' apache_access | sort | uniq | wc -l
