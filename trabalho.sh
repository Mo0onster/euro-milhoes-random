#!/bin/bash

inicio=1
tempo=6     #tempo = numero de tentativas +1

echo "Números aleatórios para o euro milhões!"
while [ $inicio -ne $tempo ]
do
    echo "Tentativa $inicio"
    echo "O numero é: $(( $RANDOM % 50 + 1))"
    echo "A estrela é: $(( $RANDOM % 12 + 1))"
    ((inicio=inicio+1))
done