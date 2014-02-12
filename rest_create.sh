#!/bin/bash
printf "response:\n"
curl -d "$2" -k -H "Content-type: application/json" -X POST $1
printf "\n" 
