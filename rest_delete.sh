#!/bin/bash
printf "response:\n"
curl -d "$2" -k -H "Content-type: application/json" -X DELETE $1
printf "\n" 
