#!/bin/bash
# *takes it all from keyboad 
# if we want only the first word it would be $1, two words : $2 and ...

echo "Hello, $*"
echo "Hello, $1"

# to make it calculate use arithmatic ()
echo "Hello,$(( 2+$3))"
