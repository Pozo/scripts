#!/bin/bash
URL="https://ephubudw0047/ta-angel/skills"

if [ "$1" == "create" ]; then
	bash rest_create.sh $URL $2
elif [ "$1" == "delete" ]; then
	bash rest_delete.sh $URL $2
elif [ "$1" == "update" ]; then
	bash rest_update.sh $URL $2
elif [ "$1" == "read" ]; then
	bash rest_read.sh $URL $2
fi
