#!/bin/bash

printf "response:\n"
curl -d "$2" -k -G -H "Content-type: application/json" $1
printf "\n"
