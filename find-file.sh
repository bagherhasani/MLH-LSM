#!/bin/bash

result=$( find / -name "$1" | wc -l)

echo "Found $result matches"
find / -name "$1"
