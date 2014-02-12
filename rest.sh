#!/bin/bash
URL="https://ephubudw0047:8443/ta-angel/skills"

echo "current URL : $URL"

if [ "$1" == "create" ]; then
	bash rest_create.sh $URL $2
elif [ "$1" == "delete" ]; then
	bash rest_delete.sh $URL $2
elif [ "$1" == "update" ]; then
	bash rest_update.sh $URL $2
elif [ "$1" == "read" ]; then
	bash rest_read.sh $URL $2
else 
	echo "Only CRUD actions allowed (create,read,update,delete)"
fi
