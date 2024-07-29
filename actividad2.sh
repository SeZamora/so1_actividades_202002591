#!/usr/bin/env bash

echo "Ingrese un usuario de github: "
read user
url="https://api.github.com/users/$user"


json=$(curl -s $url)
fecha=$(date +"%d-%m-%Y %H:%M:%S")
dia=$(date +"%d")
logfile="/tmp/$dia/saludo.log"
if [ ! -d "$(dirname "$logfile")" ] then
	mkdir -p "$(dirname "$logfile")"
fi
login=$(echo $json | jq '.login')
id=$(echo $json | jq '.id')
create=$(echo $json | jq '.created_at')
echo "Hola" $login  "User ID:" $id "Cuenta fue creada el" $create > $logfile
echo "Hola" $login  "User ID:" $id "Cuenta fue creada el" $create
 
