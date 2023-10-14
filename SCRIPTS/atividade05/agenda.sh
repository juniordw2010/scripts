#!/bin/bash

# -f agenda.db ficaria muito bom huehuehue, acordding with samuel  
# こんばは

if [ "$1" == "adicionar" ]; then
   if ! [ $(ls | grep "agenda.db") ]; then 
   	touch agenda.db
   	echo "Arquivo criado!!!"
   fi
   echo "$2:$3" >> agenda.db
   echo "Usuário $2 adicionado." 
   exit
   
elif [ "$1" == "listar" ]; then
   if ! [ $(ls | grep "agenda.db") ]; then 
   	echo "você não possui agenda :("
   	exit
   fi
   if ! [ -s "agenda.db" ]; then 
   	echo "Arquivo vazio!!!"
   	exit
   else
   	cat "agenda.db"
   	exit
   fi
   
elif [ "$1" == "remover" ]; then
   if ! [ $(ls | grep "agenda.db") ]; then 
   	echo "você não possui agenda :("
   	exit
   fi
   if ! [ -s "agenda.db" ]; then 
   	echo "Arquivo vazio!!!"	
   	exit	
   else
   	grep -q "$2" "agenda.db"
   	if [ $? -eq 0 ]; then 
   		echo "$(grep "$2" agenda.db | cut -d ':' -f 1) removido" 
   		sed -i "/$2/d" "agenda.db"
   		exit
   	else
   		echo "$2 não está em sua agenda."
   		exit
   	fi
   fi
fi
