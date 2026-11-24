#!/usr/bin/env bash

# in a future iteration we will check for exactly one argument
# or set a default of say 10, for now just grab this from CLI args
# eg: labs_template.sh 20
num=$1

for i in $(seq -w 1 "$num"); do
   echo -e "===== $i / $num ====="
   echo
   echo
   echo
done

