#!/bin/bash

./agenda.sh listar
./agenda.sh adicionar "João Marcelo" "joao.marcelo@ufc.br"
./agenda.sh adicionar "Jeandro Bezerra" "jeandro@ufc.br"
./agenda.sh adicionar "Michel Sales" "michelsb@gmail.com"
./agenda.sh adicionar "José Batista" "juniordw2010b@gmail.com"
./agenda.sh adicionar "Francisco Italo" "franciscoitalob@gmail.com"
./agenda.sh adicionar "Samuel Hen" "samuel@gmail.com"
./agenda.sh listar
./agenda.sh remover joao.marcelo@ufc.br
./agenda.sh listar
